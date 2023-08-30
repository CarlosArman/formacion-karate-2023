function fn() {
    var env = karate.env;

    karate.log('Se realizó la ejecución en el ambiente: ', env);

 if (!env) {
     env = 'dev';
 }
 if (env === 'dev') {

 } else if (env === 'cert') {

 }

 var config = {
    env: env
 }

 return config;
 }