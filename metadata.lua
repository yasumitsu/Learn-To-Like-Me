return PlaceObj('ModDef', {
	'title', "Learn To Like me",
	'description', "[h1]Learn to Like me[/h1]\n[h3]Features[/h3]\n[list]\n    [*]It adds the IMP merc to the learn to like table of other mercs\n    [*]Adds a new option to IMP learn to like mercs\n[/list]\n[h2]FAQ[/h2]\n[i]Can I add my custom IMP to the list?[/i]\nIt will be added on the moment you add a new merc, so it may require a new game.\n[i]Can you add to the like table as well?[/i]\nNo, I think it breaks the immersion.\n\n[hr][/hr]\n[h3] More Immersion mods [/h3]\n[list]\n	[*][url=https://steamcommunity.com/sharedfiles/filedetails/?id=3242501087] Suit Up[/url]\n	[*][url=https://steamcommunity.com/sharedfiles/filedetails/?id=3253711922] Baby Don't You Lie to Me [/url]\n	[*][url=https://steamcommunity.com/sharedfiles/filedetails/?id=3260806453] Audaki’s Training Overhaul[/url]\n[/list]\n\n\n[url=https://ko-fi.com/sirni] You can support me here, or just see my funny face.[/url]",
	'image', "Mod/TzxySWc/Images/Screenshot 2024-04-25 232652.png",
	'last_changes', "- Updated description and dependencies",
	'SpellCheck', true,
	'dependencies', {
		PlaceObj('ModDependency', {
			'id', "JA3_CommonLib",
			'title', "JA3_CommonLib",
			'version_minor', 8,
		}),
	},
	'id', "LearnToLikeMe",
	'author', "Sir Ni",
	'version_major', 1,
	'version_minor', 1,
	'version', 21,
	'lua_revision', 233360,
	'saved_with_revision', 350233,
	'code', {
		"Code/LearnToLikeMe.lua",
	},
	'default_options', {
		LearnToLikeMercs = false,
	},
	'saved', 1726504001,
	'code_hash', -6471693829100952590,
	'affected_resources', {},
	'steam_id', "3238535853",
	'TagIMPCharacter', true,
	'TagMercs', true,
})