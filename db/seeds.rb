categories = ["Ale", "Lager", "Stout", "Porter", "Malt", "Amber", "Blonde", "Brown", "Cream", "Dark", "Fruit", "Golden", "Honey","IPA", "Light","Lime","Pale","Pilsner","Red","Strong","Wheat"]

categories.each do |c|
  Category.create(name: c)
end

breweries = [
"33 Acres Brewing Co.",
"Arrowhead Brewing",
"Bad Tattoo Brewing Company",
"Barkerville Brewing Company",
"Barley Mill Brewpub",
"Barley Station Brewpub",
"Beacon Brewing Company",
"Big Ridge Brewing Company",
"Big River Brewpub",
"Big Rock Brewing",
"Big Surf Beer Co.",
"Black Kettle Brewing Co.",
"BNA Brewing Co.",
"Bomber Brewing ",
"Bowen Island Brewing Co.",
"Brassneck Brewery ",
"Brewhouse High Mountain Brewing Co.",
"Bridge Brewing Co.",
"Callister Brewing Company",
"Cannery Brewing",
"Canoe Brewpub ",
"Canuck Empire Brewing",
"Category 12 Brewing",
"Central City Brewing ",
"Columbia Brewery",
"Coal Harbour Brewing Company",
"Cumberland Brewing Co.",
"Dageraad Brewery",
"Dead Frog Brewery",
"Doan’s Craft Brewing Co.",
"Deep Cove Brewers",
"Dogwood Brewing",
"Dockside Brewing Co.",
"Driftwood Brewery",
"Fernie Brewing Company",
"Four Mile Brewpub",
"Four Winds Brewing",
"Gladstone Brewing Co.",
"Granville Island Brewing",
"Green Leaf Brewing",
"Gulf Islands Brewing Company",
"Hearthstone Brewing",
"Howe Sound Inn & Brewery",
"Hoyne Brewing Co.",
"Lighthouse Brewing  ",
"Longwood Brewpub",
"Main Street Brewing Co.",
"Marten Brewing Company",
"Mill Creek Brewer",
"Mission Springs Brewing Company ",
"Moon Under Water",
"Mt. Begbie Brewing",
"Nelson Brewing Co.",
"Noble Pig Brewhouse",
"Off The Rail Brewing Co.",
"Okanagan Spring Brewery ",
"Old Abbey Ales",
"Old Yale Brewing Co.",
"Pacific Western Brewing",
"Persephone Brewing Company",
"Powell Street Brewery",
"Parallel 49 Brewing Co.",
"Pat’s   ",
"Phillips Beer ",
"Postmark Brewing Co.",
"Prohibition Brewing Co.",
"R&B Brewing Co.",
"Red Collar Brewing Co",
"Red Truck Beer Company",
"Ridge Brewing Company",
"Rossland Beer Co.",
"Russel Brewing Co.",
"Shaftebury Brewing Co.",
"Skeena Brewing Company",
"Spinnakers Gastro Brewpub ",
"Stanley Park Brewery",
"Steamworks Brewing Co.",
"Steel and Oak Brewing",
"Storm Brewing Co.",
"Strange Fellows Brewing Co.",
"Surlie Brewing Co.",
"Swans Brewery ",
"The Heid Out Fisher Peak Brewing Co.",
"Three Ranges Brewing Co. ",
"Tin Whistle Brewing Co. ",
"Tofino Brewing Company ",
"Townsite Brewing Inc.",
"Vancouver Island Brewing Co.",
"Wheelhouse Brewing Co.",
"Whistler Brewing Co.",
"White Rock Beach Beer Company",
"Wolf Brewing Co.",
"Yaletown Brewing Company",
"Yellow Dog Brewing Co.",
]

breweries.each do |brew|
  Brewery.create(name: brew)
end

places.each do |e|
  Establishment.create(e)
end

places = [
  {name: "131 Water Kitchen and Bar",
  address: "127 - 131 Water Street",
  website: "www.131water.com"},

  {name: "Al Porto Ristorante",
  address: "321 Water Street",
  website: "www.alporto.ca"},

  {name: "Alexander Gastown",
  address: "91 Powell Street",
  website: "www.alexandergastown.com"},

  {name: "Bambudda",
  address: "99 Powell Street",
  website: "www.bambudda.ca"},

  {name: "Bauhaus Restaurant",
  address: "1 W. Cordova Street",
  website: "bauhaus-restaurant.com"},

  {name: "Black Frog",
  address: "108 Cambie Street",
  website: "www.theblackfrog.ca"},

  {name: "Blarney Stone",
  address: "216 Carrall Street",
  website: "www.blarneystone.ca"},

  {name: "Chill Winston",
  address: "3 Alexander Street",
  website: "www.chillwinston.ca"},

  {name: "Cork and Fin",
  address: "221 Carrall Street",
  website: "www.corkandfin.ca"},

  {name: "Gringo",
  address: "27 Blood Alley Square",
  website: "www.gringogastown.com"},

  {name: "Guilt and Company",
  address: "Basement, 1 Alexander Street",
  website: "www.guiltandcompany.com"},

  {name: "Guu Otokomae",
  address: "105-375 Water Street",
  website: "www.guu-izakaya.com"},

  {name: "Incendio",
  address: "103 Columbia Street",
  website: "www.incendio.ca"},

  {name: "Jules",
  address: "216 Abbott Street",
  website: "www.julesbistro.ca"},

  {name: "La Casita",
  address: "101 W. Cordova Street",
  website: "www.lacasita.ca"},

  {name: "Lamplighter",
  address: "92 Water Street",
  website: "www.donnellygroup.ca/lamplighter"},

  {name: "L'Abattoir",
  address: "217 Carrall Street",
  website: "www.labattoir.ca"},

  {name: "MoMo Sushi",
  address: "6-375 Water Street"},

  {name: "Nicli Antica Pizzeria",
  address: "62 E Cordova Street",
  website: "www.niclipizzeria.ca"},

  {name: "Nicli's Next Door",
  address: "68 East Cordova Street",
  website: "www.niclisnextdoor.com"},

  {name: "Notturno",
  address: "280 Carrall Street",
  website: "www.noturnogastown.com"},

  {name: "Old Spaghetti Factory",
  address: "53 Water Street",
  website: "www.oldspaghettifactory.ca"},

  {name: "Peckinpah",
  address: "2 Water Street",
  website: "www.peckinpahBBQ.com"},

  {name: "Pourhouse",
  address: "162 Water Street",
  website: "www.pourhousevancouver.com"},

  {name: "Revel Room",
  address: "238 Abbott Street",
  website: "www.revelroom.ca"},

  {name: "Rodney's Oyster House",
  address: "52 Powell Street",
  website: "www.rohvan.com"},

  {name: "Salt Tasting Room",
  address: "45 Blood Alley",
  website: "www.salttastingroom.com"},

  {name: "Secret Location Tasting Room",
  address: "1 Water Street",
  website: "www.secretlocation.ca"},

  {name: "Shirakawa",
  address: "115-12 Water Street",
  website: "shirakawagastown.com"},

  {name: "Sitar Restaurant",
  address: "8 Powell Street",
  website: "www.sitarrestaurant.net"},

  {name: "Six Acres",
  address: "203 Carrall Street",
  website: "www.sixacres.ca"},

  {name: "Steamworks Brewing Co.",
  address: "375 Water Street",
  website: "steamworks.com/brew-pub"},

  {name: "Tacofino",
  address: "15 West Cordova Street",
  website: "tacofino.com/gastown-home"},

  {name: "The Bourbon",
  address: "50 West Cordova Street",
  website: "www.thebourboncountry.com"},

  {name: "The Cambie",
  address: "300 Cambie Street",
  website: "cambiepubgastown.com"},

  {name: "The Diamond",
  address: "#6 Powell Street",
  website: "di6mond.com"},

  {name: "The Flying Pig",
  address: "102 Water Street",
  website: "www.theflyingpigvan.com"},

  {name: "The Greedy Pig",
  address: "307 West Cordova Street",
  website: "www.thegreedypig.ca"},

  {name: "The Irish Heather",
  address: "210 Carrall Street",
  website: "www.irishheather.com"},

  {name: "The Metropole Pub",
  address: "320 Abbott Street",
  website: "www.themetpub.ca"},

  {name: "The Portside Pub",
  address: "7 Alexander Street",
  website: "www.theportsidepub.com"},

  {name: "The Sardine Can",
  address: "26 Powell Street",
  website: "www.thesardinecan.ca"},

  {name: "Tuc Craft Kitchen",
  address: "60 West Cordova Street",
  website: "www.tucrestaurant.com"},

  {name: "Vera's Burger Place",
  address: "213 Carrall Street"},

  {name: "Water Street Cafe",
  address: "300 Water Street",
  website: "waterstreetcafe.ca"},

  {name: "CodeCore",
  address: "142 West Hastings Street",
  website: "www.codecore.ca"}
]
