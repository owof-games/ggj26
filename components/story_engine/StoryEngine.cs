using System.Linq;
using Godot;
using GodotInk;

namespace GlobalGameJam2026.components.story_engine;

[GlobalClass]
public partial class StoryEngine : Node
{
	[Export] private InkStory story;
	
	[Signal] public delegate void ChooseCharacterEventHandler(string[] characters);
	
	const string ChooseCharacterCommand = "@choose_character";

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
			var characters = story.CurrentChoices.Select(choice => choice.Text.Trim()).ToArray();
			EmitSignalChooseCharacter(characters);
		}
	}
}