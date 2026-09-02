> **Imported**
> This run was originally published at https://tasvideos.org/3637M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!!Epic Pinball - Enigma
Epic Pinball was a collection of pinball tables noted for being programmed entirely in x86 assembly language.

Originally released in three packs on floppy disk.  Each pack had 4 playable tables.  This run uses the CD (aka Full) version which also contains an additional table--African Safari.

This TAS plays the Enigma Table as it has a relatively definable endpoint (though play can continue indefinitely thereafter).

!!TAS Notes
*It's pinball.
*Goal: Make the Enigma arrive as fast as possible.
**There are 4 unique levels of play that must be completed for the Enigma to arrive.
***Level 1: Hit all the red gems then hit the shoes to advance.
***Level 2: Hit all the bar targets 3 times then the gem to advance.  One 'death' (lost ball) is used here to save time.
***Level 3: Hit all the diamond targets then the gem to advance.
***Level 4: Hit all the gems. Then kill the teddy bear. Then hit the cone targets. And finally lock the ball to make the Enigma appear.
**There are minimal opportunities for gaining extra points, and thus these targets are ignored unless hit by chance.
**Once the Enigma arrives, play continues indefinitely by having the player hit a never ending string of red gem targets similar to Level 1.  This is considered a bonus stage by the game and is not played in this run.
**This run is completed by tilting out once the score for spawning Enigma has been awarded, then purposely losing the remaining balls.  High-score initials are input then the credits are shown.
**Table Nudging is used to alter ball movement.  These nudges appear as jumps/twitches of the table on the screen.  These are not emulation errors but intentional.

__Potential Improvements__
*Though I've done the best I can to optimize this run, there are a vast number of possibilities for ball direction and speed on any given flipper strike.  A change in timing to any given strike will alter all future events and flipper strikes.  As such, it's possible that better 'routing' of ball strikes/direction may yield a faster run.  Also, nudging the table can alter ball movement as well and can be performed on just about any frame further increasing the potential for different 'routes'.
*RNG Manipulation? - If the appearing/disappearing bumpers in Level 1 are RNG dependent, I couldn't figure out what it was.  It's not time based as changing the initial RTC does not affect them.  Manipulating them to not appear in the path of the ball may be beneficial and could possibly yield a faster run.
*As it's necessary to lose balls to complete the run, if a run that selects 3 balls instead of 5 in the options can match or improve on the ball routing of this run; a faster run may result.  This would depend in part on the time required to change the settings vs time required to just lose the two extra balls.

__Emulator Used__
c-squares modified JPC-rr 11.2

!!Files
HDD,   
TRACKS 16,   
SIDES 16,   
SECTORS 63

||Timestamp||MD5||Size||Filename||
|19900101000000|9e58938ea3594154b16c22621a39490d|4000|END.PIN|
|19900101000000|425fb4968cdbfe80d8967d2833584fee|38251|EP1.DAT|
|19900101000000|208c9ccb1059d309626c136e4e3e2b13|251787|EP1.EXE|
|19900101000000|eedbf3f2feb31190331f5556cb91bd2e|48397|EP10.DAT|
|19900101000000|84eff3663038835bc37c769403a6fa36|246683|EP10.EXE|
|19900101000000|89519874d46eaba3d7641831f5c62196|48069|EP11.DAT|
|19900101000000|79eadc4936112603c051b976943ebea4|224763|EP11.EXE|
|19900101000000|c067a6e515268c659996cc51b8f329e0|48024|EP12.DAT|
|19900101000000|e694142a4eb7b5a64fd1035ae0e9e3ec|235051|EP12.EXE|
|19900101000000|b6c3aafd0c19ca0b917d5ad416a24be3|48272|EP13.DAT|
|19900101000000|8795395973833ae3a7a64d6e4f87b167|217307|EP13.EXE|
|19900101000000|021d62f1138a257e88b11e011093d400|40874|EP2.DAT|
|19900101000000|a09c082cad66f4860f79c527ccd94aae|255691|EP2.EXE|
|19900101000000|787d77edc35b4d03630f9d8c6d34c08b|48281|EP3.DAT|
|19900101000000|d96f1ab76b77df8f365aef1e7b5d6d84|245259|EP3.EXE|
|19900101000000|366363b46d3841c6cd3e32d4fa8f81c6|52934|EP4.DAT|
|19900101000000|7b8d2d0b0a43408f0f3f070d4169a60a|250027|EP4.EXE|
|19900101000000|d44ee1aebdd2a9b35720442cca8df229|46280|EP5.DAT|
|19900101000000|a5b78cf5d0a9ccb5f93d26b823f38db2|226971|EP5.EXE|
|19900101000000|32734d7442f6a7dbc6e17be94d80cf15|35550|EP6.DAT|
|19900101000000|ca287393149c0309d9a979984fda976a|252683|EP6.EXE|
|19900101000000|e95a4fd1963baa2030ac06033b48294b|51557|EP7.DAT|
|19900101000000|febcd2dd9efc28fa1186c95f17f546e2|240571|EP7.EXE|
|19900101000000|299ff9dc26ca59cbedcdb2879e0440e0|54529|EP8.DAT|
|19900101000000|98ea6ba89c4b5222fa3db8d261e7c194|298763|EP8.EXE|
|19900101000000|9ee768477ba70f758a422602dd848b09|47049|EP9.DAT|
|19900101000000|9eaff9002fc3b3d62ce59df93252bd67|242315|EP9.EXE|
|19900101000000|6865731614c66532f8275f1ab466635f|283|FILE_ID.DIZ|
|19900101000000|c4e65232bfb43de8e66a4f25b4b2fcf2|12495|HELPME.DOC|
|19900101000000|4643b477d085584762b3334734a8f993|14448|HELPME.EXE|
|19900101000000|a41cc7b7bb673580e8a77804933ae2f6|20|ID1.DAT|
|19900101000000|8b7513d603d252f09ea3c930b75f8ae5|20|ID10.DAT|
|19900101000000|5ed2821aeb3c2b35cecc801b1cf4a04a|20|ID11.DAT|
|19900101000000|50809e018e13dcd42cb558c7167e19ec|20|ID12.DAT|
|19900101000000|281ceaaa9ff68d9cdf080506405915dd|20|ID13.DAT|
|19900101000000|6afdba56d1c802a84642a17bf1c83804|20|ID2.DAT|
|19900101000000|7cf3ee31660ab80d1f93dfdb66368c76|20|ID3.DAT|
|19900101000000|b7764ab41d01cdfac308193809b7ae11|20|ID4.DAT|
|19900101000000|8c926206b6be76f37173b748190c7d1f|20|ID5.DAT|
|19900101000000|d86d6bfa71a7abd1d51c6c5dcd80cb83|20|ID6.DAT|
|19900101000000|d838f84ee849e9f21806c991c46ac558|20|ID7.DAT|
|19900101000000|ad9e1b0632dfa8767d3aa9bd76cbd678|20|ID8.DAT|
|19900101000000|ea5f15db0a28bb8f401ff7858bb005d4|20|ID9.DAT|
|19900101000000|38d1ca811369e27bbf299b1f6aac489a|154397|INTRO.PIN|
|19900101000000|5f8c6fa6397eca6fcfa5b94fc3eb987d|7869|LICENSE.DOC|
|19900101000000|99a1dfdb11e9dd081c86872e124ae352|4680|MDRV000R.MUS|
|19900101000000|d13b96a236cb8abac9545fa4980e7f3e|504|MDRV001R.MUS|
|19900101000000|ff855d0991610172c3b0a5aba72ff261|498|MDRV002R.MUS|
|19900101000000|eba9cf8418e37ff7c6c1f8fe354119e6|4755|MDRV003R.MUS|
|19900101000000|4ae79791476535c3235662b9106e704c|9789|MDRV004R.MUS|
|19900101000000|d4d268b8f22c8aa0e2baabbe99e97eed|9087|MDRV005R.MUS|
|19900101000000|3d7fe17811e97b53a1ae08ed31a7e45c|6062|ORDER.DOC|
|19900101000000|9c677018b0b6931f42cb8f728ec59e08|20485|ORDER.EXE|
|19900101000000|b40ef7623e44de8dce1e2e1bfc4e5041|111586|ORDER.TFP|
|19900101000000|0625abd0be343eb52175e64d093b0caa|3862|ORDER_DE.DOC|
|19900101000000|6d8d7c1664cf18976768d3b838286102|5655|ORDER_UK.DOC|
|19900101000000|b4c0af6d6f70118450217123075d6feb|11620|PIN01.TFP|
|19900101000000|9b1691377319d7a11f35b51a72385c03|11566|PIN02.TFP|
|19900101000000|e8cc1e55f75ad91bf098c5b18c8227ea|10956|PIN03.TFP|
|19900101000000|7d43d276844d135b7bfbb761273de524|11808|PIN04.TFP|
|19900101000000|73e3ae79c8449cf0b6405e5064bbd4f9|10923|PIN05.TFP|
|19900101000000|428162bfcd804861a86938468c4483f7|11652|PIN06.TFP|
|19900101000000|7cdea57a324585739d969af8f70bc52f|12598|PIN07.TFP|
|19900101000000|3f12f8eccd3aa018a379336096a22077|10835|PIN08.TFP|
|19900101000000|4e45e12cc63904ec7bf12b002221b991|11890|PIN09.TFP|
|19900101000000|0106184c940c64270f2246a123d5393c|12080|PIN10.TFP|
|19900101000000|3d869faec5a541fe6fe809b8cb2c8e76|11853|PIN11.TFP|
|19900101000000|00f82266b3934898e28671cfff6ad2d3|11934|PIN12.TFP|
|19900101000000|c3dc127d573e01296b591ce3dbb713e1|11933|PIN13.TFP|
|19900101000000|f17190391afdbd8da1225595cccb0a39|37461|PINBALL.EXE|
|19900101000000|197c3f2486c28fe6f20de051940fd8c7|8807|REG.DAT|
|19900101000000|3a9e2e034b52d91e43abdccf43ab665c|105227|SETUP.EXE|
|19900101000000|685ceed3fb70e6286773a497a92f55b0|2908|SETUP.INT|
|19900101000000|ca8f63650bf10f931e12d9423c81756b|66945|SFX0.PIN|
|19900101000000|1e12da6f7ecdb1d97fd73e9a9238b01d|116478|SFX1.PIN|
|19900101000000|57ebac7f9f29b450b0956846c74d842e|111018|SFX10.PIN|
|19900101000000|24567fca00e223f1700ff78132316c93|93673|SFX11.PIN|
|19900101000000|b70eb52d914d9bf39d09e978a98d3f4c|97778|SFX12.PIN|
|19900101000000|4098a22c4f8d80550d7ad1f7cf782e59|92481|SFX13.PIN|
|19900101000000|ee6877dabf6b38cc85e1ce0c6e4d5c83|126325|SFX2.PIN|
|19900101000000|aabbfc5d55f911b6b0e486c34c3b79a4|57062|SFX3.PIN|
|19900101000000|0462e885484439d68521da3ce487b472|92798|SFX4.PIN|
|19900101000000|948648977972b2ebc8e5fcb4a760f552|21340|SFX5.PIN|
|19900101000000|4098a22c4f8d80550d7ad1f7cf782e59|92481|SFX6.PIN|
|19900101000000|9df4b61a810905c484d3cdeebfe2c854|133901|SFX7.PIN|
|19900101000000|c287bb9cc02c18416c4b60ce18bd1a98|132042|SFX8.PIN|
|19900101000000|d56621cd799adce077f09daf370a7c49|106545|SFX9.PIN|
|19900101000000|2591df28d8853cdb17674885ddf21ac9|115895|SONG0.PSM|
|19900101000000|7022c93f58988b1647bc225ed0b8f0aa|66896|SONG1.PSM|
|19900101000000|455b170cfa8352cda94792437ac1136a|124903|SONG10.PSM|
|19900101000000|27cb282509b3e2689100766d2c2647f7|144593|SONG11.PSM|
|19900101000000|4b4e2cfcfda4cd2424393bf6962199fb|114671|SONG12.PSM|
|19900101000000|39830ccceed7e5a42463ca8be530f115|63870|SONG13.PSM|
|19900101000000|bf2e253fa894afec7a1137ebaf2044cf|49374|SONG2.PSM|
|19900101000000|3bfa31f7f3b7979ad2ee466c344b8b65|178082|SONG3.PSM|
|19900101000000|463bf003be514c39b7cdd1b4d32e92f3|153871|SONG4.PSM|
|19900101000000|0d7c2eaf107f8f4c620390e47b882357|20018|SONG5.PSM|
|19900101000000|4c24d452791c53b87717c94a55353c15|145994|SONG6.PSM|
|19900101000000|83f3b85e2d5be0066759001fc3b5922f|120516|SONG7.PSM|
|19900101000000|3f95988349a0745bd16e62022d26f357|48923|SONG8.PSM|
|19900101000000|b1364fa6c2b92815acb561033f8d6685|86068|SONG9.PSM|
|19900101000000|4e88033d5b31b5df8d35c48a7213a74a|38|SOUNDCRD.INF|
