using System;
using System.Collections.Generic;
using System.Linq;
using Godot;
using GodotInk;

namespace GlobalGameJam2026.components.story_engine;

[GlobalClass]
public partial class StoryEngine : Node
{
    [Export] private InkStory story;

    [Signal]
    public delegate void ChooseCharacterEventHandler(int[] indices, string[] characters, string[] aliases, string[] ages,
        string[] bodies, string[] inSearchOfs);

    [Signal]
    public delegate void GenericTextLineEventHandler(string line, string[] choices);

    [Signal]
    public delegate void CharacterPersonalizationEventHandler(string alias, string age, string body, string inSearchOf,
        string description, string[] topics);

    private const string ChooseCharacterCommand = "@choose_character";
    private const string AliasTagName = "alias";
    private const string AgeTagName = "age";
    private const string BodyTagName = "body";
    private const string InSearchOfTagName = "searching";
    private const string DescriptionTagName = "tag";
    private const string CharacterPersonalizationCommand = "@profile";

    public void OverrideStory(InkStory overrideStory)
    {
        story = overrideStory;
    }

    private const string ChatChoice = "Chat";

    public void Continue()
    {
        var result = story.Continue().Trim();

        GD.Print($"Continue returned: {result}");

        switch (result)
        {
            case ChooseCharacterCommand:
            {
                InkChoice[] choices = [..story.CurrentChoices];
                Random.Shared.Shuffle(choices);
                var characters = choices.Select(choice => choice.Text.Trim()).ToArray();
                var aliases = choices.Select(choice => GetTagValue(choice.Tags, AliasTagName)).ToArray();
                var ages = choices.Select(choice => GetTagValue(choice.Tags, AgeTagName)).ToArray();
                var bodies = choices.Select(choice => GetTagValue(choice.Tags, BodyTagName)).ToArray();
                var inSearchOfs = choices.Select(choice => GetTagValue(choice.Tags, InSearchOfTagName))
                    .ToArray();
                var indices = choices.Select(choice => choice.Index).ToArray();
                EmitSignalChooseCharacter(indices, characters, aliases, ages, bodies, inSearchOfs);
                break;
            }
            case CharacterPersonalizationCommand:
            {
                var alias = GetTagValue(story.CurrentTags, AliasTagName);
                var age = GetTagValue(story.CurrentTags, AgeTagName);
                var body = GetTagValue(story.CurrentTags, BodyTagName);
                var inSearchOf = GetTagValue(story.CurrentTags, InSearchOfTagName);
                var description = GetTagValue(story.CurrentTags, DescriptionTagName);
                var topics = story.CurrentChoices.Select(choice => choice.Text.Trim()).Where(text => text != ChatChoice)
                    .ToArray();
                EmitSignalCharacterPersonalization(alias, age, body, inSearchOf, description, topics);
                break;
            }
            default:
                EmitSignalGenericTextLine(
                    story.CurrentText.Trim(),
                    story.CurrentChoices.Select(choice => choice.Text.Trim()).ToArray()
                );
                break;
        }
    }

    private const string ActiveTopicsVariableName = "activeTopics";

    public void HookActiveTopicsChanged(Callable callable)
    {
        story.ObserveVariable(ActiveTopicsVariableName, callable);
    }

    public InkList GetActiveTopics()
    {
        var activeTopics = story.FetchVariable(ActiveTopicsVariableName).Obj as InkList;
        return activeTopics;
    }

    public void PickChoice(int choiceIndex)
    {
        story.ChooseChoiceIndex(choiceIndex);
    }

    public void PickChoiceByName(string choiceName)
    {
        var choiceByName = story.CurrentChoices.Single(choice => choice.Text.Trim() == choiceName);
        PickChoice(choiceByName.Index);
    }

    private static string GetTagValue(IReadOnlyList<string> tags, string tagName)
    {
        var prefix = $"{tagName}:";
        var result = tags.SingleOrDefault(tag => tag.StartsWith(prefix));
        return result?[prefix.Length..];
    }
}