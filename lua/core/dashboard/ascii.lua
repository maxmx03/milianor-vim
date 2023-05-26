local gate = {
  [[                                  ]],
  [[ ⣠⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⡀]],
  [[⠀⠛⢿⣿⣿⣿⣷⣶⣶⣶⣶⣦⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣶⣶⣶⣿⣿⡿⠟⠁]],
  [[⠀⠀⠘⠛⠿⠿⠿⢿⣿⡿⠿⠿⠿⠿⠿⠿⣿⣿⠿⠿⠿⠿⠿⠿⢿⣿⡿⠿⠿⠿⠿⠃⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⢸⣿⣧⣤⣤⣤⣤⣤⣤⣿⣿⣤⣤⣤⣤⣤⣤⣼⣿⡇⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⢸⣿⡟⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⢻⣿⡇⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⢸⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⡇⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⢸⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⡇⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⢸⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⡇⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⢸⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⡇⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⢸⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⡇⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⢸⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⡇⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⢸⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⡇⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⠁⠀⠀⠀⠀⠀⠀⠀]],
}

local fish = {
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠄⡂⠄⠀⠒⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠂⡠⣊⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣠⡤⠤⠔⠒⡈⠥⠄⠊⠀⢀⠠⠀⢀⢀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⣠⣴⣿⣷⣶⣷⣤⣶⣿⡄⠀⠀⠀⠀⠜⢈⠁⢠⣀⣈⠀⠠⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⣴⠿⠟⡵⣿⣿⣿⡋⠉⠉⠈⡒⠖⠂⢄⢸⣈⠀⠹⣿⣿⡿⠩⢀⡋⠐⢶⣿⢋⡩⠓⢦⣀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⢀⣵⣶⢣⡾⠿⠿⠖⢂⣀⡀⠀⣀⡀⠄⠐⠊⢃⠀⠀⠄⠍⡄⣤⠀⠂⠀⠊⢿⡉⠥⠄⡁⠨⠙⠒]],
  [[⠀⠀⠀⠀⠀⣠⣿⣾⡞⡡⠚⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠢⠠⢃⠀⠀⡞⢳⢄⢈⠀⠢⡺⠢⠀⠁⠀⠀⠀]],
  [[⠀⠀⠀⠀⢠⣿⣗⠛⢢⠃⠀⠀⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⡄⢈⠀⠂⡄⠤⠢⢀⠉⠄⠡⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⣿⣿⡿⢦⢁⠀⠀⠀⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡦⡈⠀⡀⡀⠀⣅⠂⠠⢐⢂⠀⠀⠀⠀]],
  [[⠀⠀⣄⢠⣿⢾⢦⠘⠘⣗⣄⠀⡄⡓⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢋⠱⠹⠦⡘⢘⠘⢘⢒⠂⡀⣼⢨⠂⠄⠀]],
  [[⠀⠀⠂⠈⣿⣭⣟⣅⡰⠈⢗⣫⡟⣌⣔⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⢔⠁⠀⠐⢡⡈⢱⠁⣈⢽⠂⠎⠀⠀]],
  [[⠀⠀⠀⠀⢫⣗⡽⡿⡃⣃⠈⣻⢯⣹⣻⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⡆⠀⠀⡈⡶⣬⠨⡀⡈⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠈⢿⣯⣿⢳⡏⢄⠘⣷⡿⣝⣖⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢘⠱⠘⠄⠢⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⡀⠐⠪⣻⣷⣽⢷⡿⣞⠶⣻⡳⣓⡿⣆⠀⠀⠀⠀⠀⢀⣀⡀⠀⠀⠀⠀⠂⢁⣡⠑⠒⡡⠁⠀⠀⠀⠀⠀]],
  [[⠤⣈⡢⢈⡐⠒⣈⡭⣝⣿⡪⢔⡭⣞⣵⣶⣿⣏⣦⠤⠀⠂⠉⠀⢀⣀⣈⢭⣴⣶⣾⢟⠸⠭⣲⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠉⠳⢤⣄⡸⠿⠟⢻⣻⢳⣭⣀⡁⠀⣾⣿⢾⠐⠠⠊⠀⠡⠤⠀⣠⣬⣿⣿⣿⣫⣾⣷⠃⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠛⡿⢟⣿⣾⡿⢿⡌⠀⠀⠠⠐⣐⣿⡷⡿⢿⣿⣿⠿⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠀⠋⠉⠉⠀⠀⡆⠂⠁⣀⠴⡒⠍⠛⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠤⠒⠦⠭⠤⠴⠊⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
}

local onigiri = {
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⣶⣶⣤⣤⣤⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⡿⠟⠉⠀⠀⠀⠀⠈⠙⠻⣶⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⢀⣿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢻⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⢰⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⢿⣆⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⣰⡿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠿⣦⣄⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⢸⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣆⡀⠀⠀⠀]],
  [[⠀⠀⢀⣴⡿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⢿⡆⠀⠀]],
  [[⠀⠀⣼⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢿⣄⠀]],
  [[⠀⢠⣿⠃⠀⠀⠀⠀⠀⣤⣤⣶⣶⣶⣶⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠈⣿⡄]],
  [[⠀⣿⠇⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⣿⠇]],
  [[⢸⣿⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⣸⡿⠀]],
  [[⠀⢻⣧⠀⠀⠀⠀⠀⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⣼⡿⠀⠀]],
  [[⠀⠀⠻⣧⣄⡀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⣤⣤⣶⠿⠋⠀⠀⠀]],
  [[⠀⠀⠀⠈⠙⠻⠷⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⠟⠛⠉⠁⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠉⠉⠉⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
}

local doom = {
  '                                                                              ',
  '=================     ===============     ===============   ========  ========',
  '\\\\ . . . . . . .\\\\   //. . . . . . .\\\\   //. . . . . . .\\\\  \\\\. . .\\\\// . . //',
  '||. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\\/ . . .||',
  '|| . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . ||',
  '||. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .||',
  '|| . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\\ . . . . ||',
  "||. . ||   ||-'  || ||  `-||   || . .|| ||. . ||   ||-'  || ||  `|\\_ . .|. .||",
  '|| . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\\ `-_/| . ||',
  "||_-' ||  .|/    || ||    \\|.  || `-_|| ||_-' ||  .|/    || ||   | \\  / |-_.||",
  "||    ||_-'      || ||      `-_||    || ||    ||_-'      || ||   | \\  / |  `||",
  "||    `'         || ||         `'    || ||    `'         || ||   | \\  / |   ||",
  "||            .===' `===.         .==='.`===.         .===' /==. |  \\/  |   ||",
  "||         .=='   \\_|-_ `===. .==='   _|_   `===. .===' _-|/   `==  \\/  |   ||",
  "||      .=='    _-'    `-_  `='    _-'   `-_    `='  _-'   `-_  /|  \\/  |   ||",
  "||   .=='    _-'          `-__\\._-'         `-_./__-'         `' |. /|  |   ||",
  "||.=='    _-'                                                     `' |  /==.||",
  "=='    _-'                        N E O V I M                         \\/   `==",
  "\\   _-'                                                                `-_   /",
  " `''                                                                      ``'  ",
}

local hydra = {
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣠⣄⣀⡀⢿⣄⠀⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⣾⣿⣷⣶⡾⣿⣦⣤⣤⡾⠀⠀⠀⠀⠀⠀⠀⣠⣶⣶⣿⣿⣿⣿⣷⣼⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠉⠉⠻⣿⣿⣿⣿⣿⣿⣶⣦⣄⡀⠀⠀⣴⣿⣿⣿⣿⠿⠛⠛⠿⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠈⠿⠟⠉⠙⠿⣿⣿⣷⣤⠀⠚⠁⣿⣿⣿⣿⠀⠀⠀⠀⠀⣿⣿⣿⣽⣧⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣿⣯⠻⡀⢸⣿⣿⣿⣿⡀⠀⠀⠀⠀⠻⠿⣿⣿⣿⣿⣦⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⠀⠸⣿⣿⣿⣿⣿⣄⠀⠀⠘⣄⠀⠀⠀⠙⣿⣿⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⢹⠀⠀⢻⠈⢿⣿⣿⣿⣿⣷⣶⣬⣿⣷⣶⣦⡀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⢤⡀⠀⠀⠀⡀⠀⠀⠀⣿⣿⣿⣿⠀⠀⠀⠠⠚⠋⣹⣿⣿⣿⣿⣿⣿⣿⣿⣷⣮⣿⣶⣤⣤⠀⠀⠀",
"⠀⠀⠀⠀⣿⣴⣿⣥⣄⡀⠀⢰⣿⣿⣿⡿⠀⠀⠀⢀⣾⣿⣿⣿⡿⣿⣿⣿⣷⠀⣿⣿⣿⣿⠿⣿⣿⡆⠀⠀",
"⠀⠀⠀⣾⣿⣿⣿⣿⣿⣿⡂⢸⣿⣿⡏⠀⠀⠀⢠⢟⣿⣿⣿⠁⠀⠈⣿⣿⣿⡄⠀⠁⠀⠀⠀⣤⠈⠀⠀⠀",
"⠀⠀⣿⣹⣿⡏⠀⠹⣿⣿⣟⠜⣿⣿⣿⠀⠀⠀⠀⣿⣿⣿⣧⠀⠀⠀⣿⣿⣿⡇⠀⢀⣬⣿⣦⣿⡀⠀⠀⠀",
"⠀⢀⣿⣿⠿⠃⠀⢀⣿⣿⣿⠀⢿⣿⣿⣧⠀⠀⠀⣿⣿⣿⣿⣦⠀⠀⣿⣿⣿⡇⢚⣿⣿⣿⣿⣿⣿⣦⠀⠀",
"⠀⣿⡿⠀⠀⠀⠀⣾⣿⣿⢹⠀⠀⢿⣿⣿⣷⣄⠀⢿⠹⣿⣿⣿⣷⣾⣿⣿⣿⠀⣿⣿⣿⠀⠀⣿⣿⣿⡀⠀",
"⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⠁⠀⠀⠀⠙⣿⣿⣿⣿⣶⣄⢹⣿⣿⣿⣿⣿⣿⣿⠀⣿⣿⣿⣄⠀⠀⠈⠻⣿⠂",
"⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣦⠀⠀⠀⠀⠀⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠀⠹⢻⣿⣿⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠘⣿⣿⣿⣿⣷⣶⣤⣤⣤⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⣸⣿⣿⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣤⣶⣶⣿⣿⣿⠋⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⣠⣶⣦⡀⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡤⠀⠀⠀⠀⢀⣀⠀",
"⣠⠀⣠⣤⣀⣩⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣤⣻⣒⣿",
"⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉",
}

return {
  gate,
  fish,
  onigiri,
  doom,
  hydra,
}
