var placeholder = "%AFKPlus_Status%";
var voice = PlaceholderAPI.static.setPlaceholders(BukkitPlayer, placeholder);

var checkVoice = function (voice) {
  return voice === "goneafk" ? "&7" : "";
};

checkVoice(voice);