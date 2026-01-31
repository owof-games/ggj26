using Godot;
using GodotInk;

namespace GlobalGameJam2026.components.story_engine;

[GlobalClass]
public partial class StoryEngine : Node
{
	[Export] private InkStory story;

	public void Continue()
	{
		var result = story.Continue();
		GD.Print(result);
	}
}