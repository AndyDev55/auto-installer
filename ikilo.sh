if (( $EUID != 0 )); then
    echo "Silahkan masuk ke direktori root"
    exit
fi
    curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash - 
    
    apt install -y nodejs 
    
    npm i -g yarn 
    
    cd /var/www/pterodactyl 
    
    yarn add react-feather  
    
    php artisan migrate 
    
    yarn build:production

    php artisan view:clear
    
  echo "DONE COOOKKK"