#!/bin/bash
echo Creando archivos...

#STYLELINT
cat > .stylelintrc.json << EOF
{
  "extends": "stylelint-config-standard"
}
EOF

#POSTCSS
cat > postcss.config.js << EOF
module.exports = {
  plugins: [
    require('postcss-advanced-variables'),
    require('postcss-nested'),
    require('autoprefixer')
  ]
}
EOF
echo Postcss LISTO

npm i -D autoprefixer postcss-advanced-variables postcss-nested stylelint stylelint-config-standard eslint
npx eslint --init
