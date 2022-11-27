var placeholder = "%discordsrv_user_islinked%";
var voice = PlaceholderAPI.static.setPlaceholders(BukkitPlayer, placeholder);

var checkVoice = function (voice) {
  return voice === "yes" ? "§a" : "§7";
};

checkVoice(voice);