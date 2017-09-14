
class CfgSounds {
	sounds[] = {};
	
    class GVAR(snd_makingBomb) {
        name = QGVAR(snd_makingBomb);
        sound[] = {QUOTE(PATHTOF(sounds\barrel_making.ogg)), VOLUME_BOMBMAKING, 1};
        titles[] = {};
    };

    class GVAR(snd_fallingSound) {
        name = QGVAR(snd_fallingSound);
        sound[] = {QUOTE(PATHTOF(sounds\falling_sound.ogg)), VOLUME_FALLINGSOUND, 1};
        titles[] = {};
    };	

    class GVAR(snd_loadingBarrel) {
        name = QGVAR(snd_loadingBarrel);
        sound[] = {QUOTE(PATHTOF(sounds\loading_barrel.ogg)), VOLUME_BOMBMAKING, 1};
        titles[] = {};
    };		
};
