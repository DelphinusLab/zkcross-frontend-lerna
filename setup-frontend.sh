[ -d "./packages" ] || mkdir packages

cd packages
repo init -u git@github.com:DelphinusLab/delphinus.git -b rio -m delphinus-frontend.xml
repo sync
cd -

npm install
npx lerna bootstrap --hoist --nohoist=circomlib
