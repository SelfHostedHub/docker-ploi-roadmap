#!/bin/sh


echo -e "███████╗███████╗██╗     ███████╗    ██╗  ██╗ ██████╗ ███████╗████████╗███████╗██████╗     ██╗  ██╗██╗   ██╗██████╗                               ";
echo -e "██╔════╝██╔════╝██║     ██╔════╝    ██║  ██║██╔═══██╗██╔════╝╚══██╔══╝██╔════╝██╔══██╗    ██║  ██║██║   ██║██╔══██╗                              ";
echo -e "███████╗█████╗  ██║     █████╗      ███████║██║   ██║███████╗   ██║   █████╗  ██║  ██║    ███████║██║   ██║██████╔╝                              ";
echo -e "╚════██║██╔══╝  ██║     ██╔══╝      ██╔══██║██║   ██║╚════██║   ██║   ██╔══╝  ██║  ██║    ██╔══██║██║   ██║██╔══██╗                              ";
echo -e "███████║███████╗███████╗██║         ██║  ██║╚██████╔╝███████║   ██║   ███████╗██████╔╝    ██║  ██║╚██████╔╝██████╔╝                              ";
echo -e "╚══════╝╚══════╝╚══════╝╚═╝         ╚═╝  ╚═╝ ╚═════╝ ╚══════╝   ╚═╝   ╚══════╝╚═════╝     ╚═╝  ╚═╝ ╚═════╝ ╚═════╝                               ";
echo -e "                                                                                                                                                 ";
echo -e "                                                                                                                                                 ";
echo -e "                                                                                                                                                 ";
echo -e "                                                                                                                                                 ";
echo -e "██████╗  ██████╗  ██████╗██╗  ██╗███████╗██████╗     ██████╗ ██╗      ██████╗ ██╗    ██████╗  ██████╗  █████╗ ██████╗ ███╗   ███╗ █████╗ ██████╗ ";
echo -e "██╔══██╗██╔═══██╗██╔════╝██║ ██╔╝██╔════╝██╔══██╗    ██╔══██╗██║     ██╔═══██╗██║    ██╔══██╗██╔═══██╗██╔══██╗██╔══██╗████╗ ████║██╔══██╗██╔══██╗";
echo -e "██║  ██║██║   ██║██║     █████╔╝ █████╗  ██████╔╝    ██████╔╝██║     ██║   ██║██║    ██████╔╝██║   ██║███████║██║  ██║██╔████╔██║███████║██████╔╝";
echo -e "██║  ██║██║   ██║██║     ██╔═██╗ ██╔══╝  ██╔══██╗    ██╔═══╝ ██║     ██║   ██║██║    ██╔══██╗██║   ██║██╔══██║██║  ██║██║╚██╔╝██║██╔══██║██╔═══╝ ";
echo -e "██████╔╝╚██████╔╝╚██████╗██║  ██╗███████╗██║  ██║    ██║     ███████╗╚██████╔╝██║    ██║  ██║╚██████╔╝██║  ██║██████╔╝██║ ╚═╝ ██║██║  ██║██║     ";
echo -e "╚═════╝  ╚═════╝  ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝    ╚═╝     ╚══════╝ ╚═════╝ ╚═╝    ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝╚═════╝ ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝     ";
echo "                                                                                                                                                 ";

 
sleep 5

echo -e "[INFO] Getting Ready"

sleep 5

echo -e "[INFO] Initializing App"

echo -e "[INFO] Install Composer Packages"

composer install --no-interaction --optimize-autoloader --no-dev

echo -e "[INFO] Clearing Config Cache"

php artisan config:cache

echo -e "[INFO] Clearing Route Cache"
php artisan route:cache 

echo -e "[INFO] Clearing View Cache"
php artisan view:clear 

echo -e "[INFO] Migrating Database"
php artisan migrate --no-interaction --force

echo -e "[INFO] Run NPM CI"
npm ci

echo -e "[INFO] Run NPM Production"
npm run production

echo -e "[INFO] To Finish Setup, Run php artisan roadmap:install and type yes for everything"
echo -e "[INFO] Running On Port 9000"
