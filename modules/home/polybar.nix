{ pkgs, config, ... }:

{    
   services.polybar = {
     enable = true;
     config = {
     
   "colors" = {
   black = "#000";
   white = "#fff"; 
   blue = "#00f";
   green = "#0f0";
   
};
   "bar/top" = {
    monitor = "\${env:MONITOR:DP-2}";
    width = "100%";
    height = "3%";
    radius = 0;
    modules-left = "xworkspaces xwindow";
   modules-right = "pulseaudio memory cpu date";
    font-0 = "Terminess Nerd Font";
    background = "\${colors.black}";
    foreground = "\${colors.green}";
   
  };

  "module/date" = {
    type = "internal/date";
    internal = 5;
    date = "%d.%m.%y";
    time = "%H:%M";
    label = "%time%  %date%";
    background = "\${colors.black}";
    foreground = "\${colors.green}";
  };
};
   extraConfig = ''
   modules-left = xworkspaces xwindow
   modules-right = pulseaudio memory cpu date
  '';
};
  services.polybar.script = ''
  polybar bar &
  '';
}