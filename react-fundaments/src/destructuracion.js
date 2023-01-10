const user1={
    name: 'Christopher Vasco',
    username: 'Crislml',
    country: 'Ecuador',
    social:{
        facebook: 'aqui va un link',
        instagram: 'aqui va un link',
    }
}

const saluda = (user) => {
    const {name, country, social: {facebook, instagram}} = user

    const orden = ['pizza', 'te verde', 'pay', 1234, false, 'pruebas']
    const [comida, bebida, postre, ...restantes] = orden 

    /*Esta linea hace lo mismo que arriba, solo que con var o let se puede dar variables
    que puedan cambiar con el tiempo. Al usar desestructuracion anidada se tiene que
    definir todos los objetos hijos del objeto padre "social= instagram y facebook, ..." 
    Al colocar : frente al objeto se le puede cambiar el nombre de ese opbjeto sin afectar,
    pero se tiene que definir en donde se le va a llamar "${aliasCool}"*/
    // var{username: aliasCool, social: {facebook: fb}} =user

    console.log(
        `Hola soy ${name} y vivo en ${country}. Mis redes sociales son ${facebook}, ${instagram}. Mi comida favorita es ${comida}, me gusta tomar ${bebida} y mi postre favorito es ${postre}.
        Estos son los restantes del operador Spreed: ${restantes}`
    )
}

saluda(user1) 