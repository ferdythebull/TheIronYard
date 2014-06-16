module HorsesHelper

def horse_breeds
  [
    ['Unknown / Other'],
    ['Abtenauer'],
    ['Abyssinian'],
    ['Aegidienberger'],
    ['Akhal-Teke'],
    ['Albanian'],
    ['Altai'],
    ['American Cream Draft'],
    ['American Indian'],
    ['American Paint'],
    ['American Quarter'],
    ['American Saddlebred'],
    ['American Warmblood'],
    ['Andalusian'],
    ['Andravida'],
    ['Anglo-Arabian'],
    ['Anglo-Arabo-Sardo'],
    ['Anglo-Kabarda'],
    ['Appaloosa'],
    ['AraAppaloosa'],
    ['Arabian'],
    ['Ardennes'],
    ['Arenberg-Nordkirchen'],
    ['Asturcón'],
    ['Augeron'],
    ['Australian Draught'],
    ['Australian Stock'],
    ['Austrian Warmblood'],
    ['Auvergne'],
    ['Auxois'],
    ['Azerbaijan'],
    ['Azteca'],
    ['Baise'],
    ['Balearic'],
    ['Balikun'],
    ['Baluchi'],
    ["Ban'ei"],
    ['Banker'],
    ['Barb'],
    ['Bardigiano'],
    ['Basque Mountain'],
    ['Bavarian Warmblood'],
    ['Belgian'],
    ['Black Forest'],
    ['Blazer'],
    ['Boulonnais'],
    ['Brandenburger'],
    ['Brazilian Sport'],
    ['Breton'],
    ['Brumby'],
    ['Budyonny'],
    ['Burguete'],
    ['Byelorussian Harness'],
    ['Calabrese'],
    ['Camargue'],
    ['Camarillo White'],
    ['Campolina'],
    ['Canadian'],
    ['Canadian Pacer'],
    ['Carolina Marsh Tacky'],
    ['Caspian'],
    ['Castillonnais'],
    ['Catria'],
    ['Cavallo Romano della Maremma Laziale'],
    ['Chilean'],
    ['Choctaw'],
    ['Cleveland Bay'],
    ['Clydesdale'],
    ['Colorado Ranger'],
    ['Coldblood Trotter'],
    ['Comtois'],
    ['Costa Rican Saddle'],
    ['Criollo'],
    ['Croatian Coldblood'],
    ['Cuban Criollo'],
    ['Cumberland Island'],
    ['Curly'],
    ['Czech Warm Blood'],
    ['Danish Warmblood'],
    ['Danube Delta'],
    ['Dole Gudbrandsdal'],
    ['Dutch Harness'],
    ['Dutch Heavy Draft'],
    ['Dutch Warmblood'],
    ['East Bulgarian'],
    ['Estonian Draft'],
    ['Estonian'],
    ['Falabella'],
    ['Finnhorse'],
    ['Fjord'],
    ['Florida Cracker'],
    ['Fouta'],
    ['Frederiksborg'],
    ['Freiberger'],
    ['French Trotter'],
    ['Friesian Cross'],
    ['Friesian'],
    ['Friesian Sporthorse'],
    ['Furioso-North Star'],
    ['Galiceno'],
    ['Galician Pony'],
    ['Gelderland'],
    ['Georgia Grande'],
    ['Giara'],
    ['Gidran'],
    ['Groningen'],
    ['Gypsy Vanner'],
    ['Hackney'],
    ['Haflinger'],
    ['Hanoverian'],
    ['Heck'],
    ['Heihe'],
    ['Henson'],
    ['Hirzai'],
    ['Hispano-Bretón'],
    ['Hispano-Árabe'],
    ['Holsteiner'],
    ['Hungarian Warmblood'],
    ['Icelandic'],
    ['Indian Half-Bred'],
    ['Iomud'],
    ['Irish Draught'],
    ['Irish Sport'],
    ['Italian Heavy Draft'],
    ['Italian Trotter'],
    ['Jaca Navarra'],
    ['Jutland'],
    ['Kabarda'],
    ['Kaimanawa'],
    ['Kalmyk'],
    ['Karabair'],
    ['Karabakh'],
    ['Kathiawari'],
    ['Kazakh'],
    ['Kentucky Mountain Saddle'],
    ['Kiger Mustang'],
    ['Kinsky'],
    ['Kisber Felver'],
    ['Kladruber'],
    ['Knabstrupper'],
    ['Konik'],
    ['Kustanair'],
    ['Latvian'],
    ['Lipizzan'],
    ['Lithuanian Heavy Draught'],
    ['Lokai'],
    ['Losino'],
    ['Lusitano'],
    ['Malopolski'],
    ['Mallorquín'],
    ['Mangalarga'],
    ['Mangalarga Marchador'],
    ['Maremmano'],
    ['Marismeńo'],
    ['Marwari'],
    ['Mecklenburger'],
    ['Medimurje'],
    ['Menorquín'],
    ['Mérens'],
    ['Messara'],
    ['Miniature'],
    ['Misaki'],
    ['Missouri Fox Trotter'],
    ['Monchina'],
    ['Mongolian'],
    ['Monterufolino'],
    ['Morab'],
    ['Morgan'],
    ['Moyle'],
    ['Murakoz'],
    ['Murgese'],
    ['Mustang'],
    ['Namib Desert'],
    ['Nangchen'],
    ['National Show'],
    ['Nez Perce'],
    ['Nivernais'],
    ['Nokota'],
    ['Nonius'],
    ['Nordlandshest/ Lyngshest'],
    ['Noriker'],
    ['Norman Cob'],
    ['North Swedish'],
    ['Novokirghiz'],
    ['Oberlander'],
    ['Oldenburg'],
    ['Orlov Trotter'],
    ['Ostfriesen and Alt-Oldenburger'],
    ['Pampa'],
    ['Paso Fino'],
    ['Pentro'],
    ['Percheron'],
    ['Persano'],
    ['Peruvian Paso'],
    ['Pintabian'],
    ['Pleven'],
    ['Poitevin'],
    ['Posavac'],
    ['Pryor Mountain Mustang'],
    ["Przewalski's"],
    ['Purosangue Orientale'],
    ['Qatgani'],
    ['Quarab'],
    ['Racking'],
    ['Retuerta'],
    ['Rhenish-German Cold-Blood'],
    ['Rhinelander'],
    ['Riwoche'],
    ['Rocky Mountain'],
    ['Romanian Sporthorse'],
    ['Russian Don'],
    ['Russian Heavy Draft'],
    ['Russian Trotter'],
    ['Salerno'],
    ['Samolaco'],
    ['San Fratello'],
    ['Sarcidano'],
    ['Sardinian Anglo-Arab'],
    ['Schleswig'],
    ['Sella Italiano'],
    ['Selle Français'],
    ['Shagya Arabian'],
    ['Shire'],
    ['Siciliano Indigeno'],
    ['Silesian'],
    ['Sorraia'],
    ['Sokolsky'],
    ['Soviet Heavy Draft'],
    ['Spanish Jennet'],
    ['Spanish Mustang'],
    ['Spanish-Norman'],
    ['Spotted Saddle'],
    ['Standardbred'],
    ['Suffolk Punch'],
    ['Swedish Ardennes'],
    ['Swedish Warmblood'],
    ['Swiss Warmblood'],
    ['Taishuh'],
    ['Tawleed'],
    ['Tennessee Walking'],
    ['Tersk'],
    ['Thoroughbred'],
    ['Tiger'],
    ['Tolfetano'],
    ['Tori'],
    ['Trait Du Nord'],
    ['Trakehner'],
    ['Ukranian Riding'],
    ['Unmol'],
    ['Uzunyayla'],
    ['Ventasso'],
    ['Virginia Highlander'],
    ['Vlaamperd'],
    ['Vladimir Heavy Draft'],
    ['Waler'],
    ['Walkaloosa'],
    ['Warlander'],
    ['Westphalian'],
    ['Wielkopolski'],
    ['Württemberger'],
    ['Xilingol'],
    ['Yakutian'],
    ['Yili'],
    ['Yonaguni'],
    ['Zweibrücker']
  ]
end

end
