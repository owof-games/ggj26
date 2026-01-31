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
    public delegate void ChooseCharacterEventHandler(int[] indices, string[] characters, string[] aliases, int[] ages, string[] bodies, string[] inSearchOfs);

    private const string ChooseCharacterCommand = "@choose_character";
    private const string AliasTagName = "alias";
    private const string AgeTagName = "age";
    private const string BodyTagName = "body";
    private const string InSearchOfTagName = "insearchof";

    public void OverrideStory(InkStory overrideStory)
    {
        story = overrideStory;
    }

    public void Continue()
    {
        var result = story.Continue().Trim();

        GD.Print(result);

        if (result == ChooseCharacterCommand)
        {
            InkChoice[] choices = [..story.CurrentChoices];
            Random.Shared.Shuffle(choices);
            var characters = choices.Select(choice => choice.Text.Trim()).ToArray();
            var aliases = choices.Select(choice => GetTagValue(choice.Tags, AliasTagName)).ToArray();
            var ages = choices.Select(choice => GetTagValue(choice.Tags, AgeTagName)).Select(int.Parse)
                .ToArray();
            var bodies = choices.Select(choice => GetTagValue(choice.Tags, BodyTagName)).ToArray();
            var inSearchOfs = choices.Select(choice => GetTagValue(choice.Tags, InSearchOfTagName))
                .ToArray();
            var indices = choices.Select(choice => choice.Index).ToArray();
            EmitSignalChooseCharacter(indices, characters, aliases, ages, bodies, inSearchOfs);
        }
    }

    string GetTagValue(IReadOnlyList<string> tags, string tagName)
    {
        var prefix = $"{tagName}:";
        var result = tags.SingleOrDefault(tag => tag.StartsWith(prefix));
        return result?[prefix.Length..];
    }
}