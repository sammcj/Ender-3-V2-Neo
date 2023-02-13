# diff

Changes from MRiscoC's special configuration for Ender3V2-422-BLTUBL-MPC

See:

- [diffs/mriscoc/Configuration.diff](diffs/mriscoc/Configuration.diff)
- [diffs/mriscoc/Configuration_adv.diff](diffs/mriscoc/Configuration_adv.diff)

---

Note for myself below

 TODO: Keep this up to date from my build directory - or move my build source to this repo.

To check this repo is up to date with my source:

```shell
cd ~/git/3dprinting/Ender3V2S1

cp Marlin/Configuration.h ../../sammcj/Ender-3-V2-Neo/firmware/to-be-tested/Configuration.h
cp Marlin/Configuration_adv.h ../../sammcj/Ender-3-V2-Neo/firmware/to-be-tested/Configuration_adv.h
```

To generate diffs:

```shell
cd ~/git/3dprinting/Ender3V2S1

rm ../../sammcj/Ender-3-V2-Neo/firmware/to-be-tested/diffs/mriscoc/{Configuration_adv.diff,Configuration_adv.diff}

diff Marlin/Configuration_adv.h ../Special_Configurations/Ender3V2-422-BLTUBL-MPC/Configuration_adv.h > ../../sammcj/Ender-3-V2-Neo/firmware/to-be-tested/diffs/mriscoc/Configuration_adv.diff

diff Marlin/Configuration.h ../Special_Configurations/Ender3V2-422-BLTUBL-MPC/Configuration.h > ../../sammcj/Ender-3-V2-Neo/firmware/to-be-tested/diffs/mriscoc/Configuration.diff
```
