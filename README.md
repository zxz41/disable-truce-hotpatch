# disable-truce-hotpatch
 A quick and dirty hotpatch that disables truces on offical Valve maps.
 Uploaded upon request. Note that this plugin comes with no warranty or support at this time.

 **SIDENOTE:** Since this is a quick patch. Maps that force truce via inputs, or tf_halloween_allow_truce_during_boss_event being non-zero, will still enables truces.

# How does it work?
 It simply patches some instructions in the RecalculateTruce function to completely skip a Valve map check.

# Dependencies
 [SourceScramble](https://github.com/nosoop/SMExt-SourceScramble) (for memory patching and validation.)

# Installation
 Since I have no plans (for now) to maintain this plugin, **it comes with no warranty or support.**
 You either have to compile it yourself. Or use the SourceScramble manager.

 ## Compiling (for advanced users!)
 Compile and install the plugin like you would with any other plugin. Note that you'll need SourceScramble includes.
 The configs folder is not required, as this is meant for the SourceScramble manager.

 ## Using the SourceScramble manager.
 * Download and install the SourceScramble manager from [here](https://github.com/nosoop/SMExt-SourceScramble/releases) and install it like you would with any other plugin.
 * Download this respository via `Code > Download ZIP`
 * Copy `configs` and `gamedata` to the `sourcemod/` folder.

# Uninstalling (SourceScramble manager)
 You should be able to safely delete the `DisableValveMapTruce.cfg` file in your `configs/sourcescramble/` folder.