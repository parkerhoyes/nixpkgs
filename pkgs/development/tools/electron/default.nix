{ lib, stdenv
, libXScrnSaver
, makeWrapper
, fetchurl
, wrapGAppsHook
, glib
, gtk3
, unzip
, atomEnv
, libuuid
, at-spi2-atk
, at-spi2-core
, libdrm
, mesa
, libxkbcommon
, libappindicator-gtk3
, libxshmfence
}@args:

let
  mkElectron = import ./generic.nix args;
in
rec {

  electron = electron_16;

  electron_7 = mkElectron "7.3.3" {
    x86_64-linux = "a947228a859149bec5bd937f9f3c03eb0aa4d78cfe4dfa9aead60d3646a357f9";
    x86_64-darwin = "e081436abef52212065f560ea6add1c0cd13d287a1b3cc76b28d2762f7651a4e";
    i686-linux = "5fb756900af43a9daa6c63ccd0ac4752f5a479b8c6ae576323fd925dbe5ecbf5";
    armv7l-linux = "830678f6db27fa4852cf456d8b2828a3e4e3c63fe2bced6b358eae88d1063793";
    aarch64-linux = "03d06120464c353068e2ac6c40f89eedffd6b5b3c4c96efdb406c96a6136a066";
    headers = "0ink72nac345s54ws6vlij2mjixglyn5ygx14iizpskn4ka1vr4b";
  };

  electron_8 = mkElectron "8.5.5" {
    x86_64-linux = "8058442ab4a18d73ca644d4a6f001e374c3736bc7e37db0275c29011681f1f22";
    x86_64-darwin = "02bb9f672c063b23782bee6e336864609eed72cffeeea875a3b43c868c6bd8b3";
    i686-linux = "c8ee6c3d86576fe7546fb31b9318cb55a9cd23c220357a567d1cb4bf1b8d7f74";
    armv7l-linux = "0130d1fcd741552d2823bc8166eae9f8fc9f17cd7c0b2a7a5889d753006c0874";
    aarch64-linux = "ca16d8f82b3cb47716dc9db273681e9b7cd79df39894a923929c99dd713c45f5";
    headers = "18frb1z5qkyff5z1w44mf4iz9aw9j4lq0h9yxgfnp33zf7sl9qb5";
  };

  electron_9 = mkElectron "9.4.4" {
    x86_64-linux = "781d6ca834d415c71078e1c2c198faba926d6fce19e31448bbf4450869135450";
    x86_64-darwin = "f41c0bf874ddbba00c3d6989d07f74155a236e2d5a3eaf3d1d19ef8d3eb2256c";
    i686-linux = "40e37f8f908a81c9fac1073fe22309cd6df2d68e685f83274c6d2f0959004187";
    armv7l-linux = "2dfe3e21d30526688cc3d3215d06dfddca597a2cb62ff0c9d0d5f33d3e464a33";
    aarch64-linux = "f1145e9a1feb5f2955e5f5565962423ac3c52ffe45ccc3b96c6ca485fa35bf27";
    headers = "0yx8mkrm15ha977hzh7g2sc5fab9sdvlk1bk3yxignhxrqqbw885";
  };

  electron_10 = mkElectron "10.4.7" {
    x86_64-linux = "e3ea75fcedce588c6b59cfa3a6e46ba67b789e14dc2e5b9dfe1ddf3f82b0f995";
    x86_64-darwin = "8f01e020563b7fce68dc2e3d4bbf419320d13b088e89eb64f9645e9d73ad88fb";
    i686-linux = "dd7fde9b3993538333ec701101554050b27d0b680196d0883ab563e8e696fc79";
    armv7l-linux = "56f11ed14f8a620650d31c21ebd095ce59ef4286c98276802b18f9cc85560ddd";
    aarch64-linux = "0550584518c8e98fe1113706c10fd7456ec519f7aa6867fbff17c8913327d758";
    headers = "01x6a0r2jawjpl09ixgzap3g0z6znj34hsnnhzanavkbds0ri4k6";
  };

  electron_11 = mkElectron "11.5.0" {
    x86_64-linux = "613ef8ac00c5abda425dfa48778a68f58a2e9c7c1f82539bb1a41afabbd6193f";
    x86_64-darwin = "32937dca29fc397f0b15dbab720ed3edb88eee24f00f911984b307bf12dc8fd5";
    i686-linux = "cd154c56d02d7b1f16e2bcd5650bddf0de9141fdbb8248adc64f6d607e5fb725";
    armv7l-linux = "3f5a41037aaad658051d8bc8b04e8dece72b729dd1a1ed8311b365daa8deea76";
    aarch64-linux = "f698a7743962f553fe36673f1c85bccbd918efba8f6dca3a3df39d41c8e2de3e";
    aarch64-darwin = "749fb6bd676e174de66845b8ac959985f30a773dcb2c05553890bd99b94c9d60";
    headers = "1zkdgpjrh1dc9j8qyrrrh49v24960yhvwi2c530qbpf2azgqj71b";
  };

  electron_12 = mkElectron "12.2.3" {
    armv7l-linux = "4de83c34987ac7b3b2d0c8c84f27f9a34d9ea2764ae1e54fb609a95064e7e71a";
    aarch64-linux = "d29d234c09ba810d89ed1fba9e405b6975916ea208d001348379f89b50d1835c";
    x86_64-linux = "deae6d0941762147716b8298476080d961df2a32d0f6f57b244cbe3a2553cd24";
    i686-linux = "11b4f159cd3b89d916cc05b5231c2cde53f0c6fb5be8e881824fde00daa5e8c2";
    x86_64-darwin = "5af34f1198ce9fd17e9fa581f57a8ad2c9333187fb617fe943f30b8cde9e6231";
    aarch64-darwin = "0db2c021a047a4cd5b28eea16490e16bc82592e3f8a4b96fbdc72a292ce13f50";
    headers = "1idam1xirxqxqg4g7n33kdx2skk0r351m00g59a8yx9z82g06ah9";
  };

  electron_13 = mkElectron "13.6.6" {
    armv7l-linux = "4d8a8bde1c993bfc20afb2b23e55101ad2048f5ddd89ab86043f510470aeba8d";
    aarch64-linux = "6d1480f80d43cdebd9f74cb62b64c9d16bee29b68b863faf7c50fcb91f63985c";
    x86_64-linux = "62b9ba2fea4f0f54fd54bce8a532d14132302a66ec99173764f44234fa76925e";
    i686-linux = "b83860318b2e591b150dc9578ea749f66ab9a18aafbe69dadb622b9ca131e695";
    x86_64-darwin = "a59b7270f86286e4ee217552b8729621f4b282360ad15391886d5686008b6933";
    aarch64-darwin = "1f445d2f02d1054a760bdaafb755677a35c495e64385e2d2a5547b6750a82dfa";
    headers = "0qdlw17jxhhcamr8g2ybbs2jkijzdq82qgc3knr4kdxb425q898r";
  };

  electron_14 = mkElectron "14.2.3" {
    armv7l-linux = "d4ed85690c49b6ec1b532256bd63ccfb670d14da9bb5ccf706e03da2f5fe377e";
    aarch64-linux = "ac8be1a06ad4b3da16438cc9c257b3c443417d5d9272830b0d51c1f2c9b14f52";
    x86_64-linux = "c72ce5943e9e5e9b10b0822b3e60de74612db81c4ebaf475e5fa8735af344b22";
    i686-linux = "9dec585682c0a08f048f1eda6a931cad3c85d47842786aae565af930a7ef7b51";
    x86_64-darwin = "fb90d61855b63ac1115a60683d476931a6b6bf194e77867192d927bbb9051070";
    aarch64-darwin = "035e6e2e8d50e867eee37b0631fc95b3f0e8760294af71c23bc73c0f3fc99f83";
    headers = "0m03nb1nlwd03wn765rs06yiqzkxlk9jafab0zaxywsq94z5np0y";
  };

  electron_15 = mkElectron "15.3.4" {
    armv7l-linux = "caff953cbffdac63307b75a3b78be82ea6003782e981edfdcba14da5ee48b8b6";
    aarch64-linux = "dba1e09b3e4924148b57539d86840fa22e5500f3e15a694dcd2e26b830c1f780";
    x86_64-linux = "5e13b64c3b1b025ddea92b3bda577e00fc533902a9cf92bfd87b976637f7b59a";
    i686-linux = "1253e837e98fc41c14f6b71f0f917b8f42a0777bd2554046567b512f747240d8";
    x86_64-darwin = "ea1cb757f9c8c4c99c840357ecab42a0bcbe8c7a6a3a1265106c238088ad18f1";
    aarch64-darwin = "65b9b3235efdb681e3a4db85068dc9fe6dfbcb7fbb146053c0a534e4b44a2f7a";
    headers = "1xnbzskvf8p5a07bha41qqnw1hb68f019qrda3z2jn96m3qnj46r";
  };

  electron_16 = mkElectron "16.0.6" {
    armv7l-linux = "f15d665cbf487538f5448a318519e16e3c07a5f7b55895541df1c067c9cfcb55";
    aarch64-linux = "92037b0886a9404c7f9027e7597df552b2c0011ded100537f4287e4e925db6dc";
    x86_64-linux = "0017aba47756b962b9571ccd9dcf6297af0f603b879e26f49bab8728bb64567d";
    i686-linux = "11ae3628d27d12612a8742b72b0dc4521c9b2cd303619046c6f6a36282f43c72";
    x86_64-darwin = "250489ca6b1bec91f4d59766c1d4f65407f016765395517a6dfd5625e93d646f";
    aarch64-darwin = "a4416627a3055308259689fd156a7d4fd704983420a20e8939409b08195af204";
    headers = "00iq8v3nm42f9fphwd50vdng51bd291rk33zcavpidiw29hrqi9m";
  };
}
