function weather -d "Show weather from wttr.in"
	if test (count $argv) -eq 1; and test $argv[1] = "-s"
		curl -s 'http://www.accuweather.com/es/ar/bahia-blanca/2931/weather-forecast/2931?lang=es-ar'| awk -F\' '/acm_RecentLocationsCarousel.push\(\{name:"Bah/{print $1"\nTemperatura: "$10" °C\n" "Térmica: "$12" °C\n" $13}' | sed 's/.*"\(.*\)".*/\1/'
	else
		curl -s 'wttr.in/bahia_blanca'| head -n-3
	end
end
