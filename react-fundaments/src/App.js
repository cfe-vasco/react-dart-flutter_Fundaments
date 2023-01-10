// import React from "react";
// import TarjetaFruta from "./components/tarjetaFruta/tarjetaFruta";

// const App = () => (
//     <div>
//       <TarjetaFruta name="Sandia" price={8.0} />
//       <TarjetaFruta name="Naranja" price={7.0} />
//       <TarjetaFruta name="Kiwi" price={16.0} />
//     </div>
//   );

//   export default App

// Ejemplo de operadores Spreed
// import React, { Component } from "react";

// class Contador extends Component {
//   state = {
//     video: {
//       title: "Super Video",
//       likes: 0,
//     },
//   };

//   add = () => {
//     this.setState((state) => ({
//       video: {
//         ...state.video,
//         likes: state.video.likes + 1
//       }
//     }));
//   };

//   render() {
//     return (
//       <div>
//         <h1>{this.state.video.title}</h1>
//         <button onClick={this.add}>likes: ({this.state.video.likes})</button>
//       </div>
//     );
//   }
// }

// const App = () => (
//   <div>
//     <Contador />
//   </div>
// );
// export default App;

//Ejemplo de operadores Spreed para props
// import React, { Component } from "react";

// const Gato = (props) => (
//   <div>
//     <h1>Gato</h1>
//     <pre>
//       {JSON.stringify(props, null, 4)}
//     </pre>
//   </div>
// )
// class App extends Component{
//   render(){
//     const otrosDatos = {
//       raza: 'tropical',
//       peleasNocturnas: 300
//     }

//     return(
//       <div>
//         <Gato
//         name= 'Gardfield'
//         age= '2 años'
//         {...otrosDatos}
//         />
//       </div>
//     )
//   }
// }

// export default App

//Ejeplo de eventos de mouse
// import React, { Component } from "react";

// const styles = {
//   height: "200px",
//   background: "gold",
//   paddig: "1em",
//   boxSizing: "border-box",
// };
// class App extends Component {
//   state = {
//     x: 0,
//     y: 0,
//   };

//   manejador = (event) => {
//     this.setState({
//       x: event.clientX,
//       y: event.clientY,
//     });
//   };
//   render() {
//     return <div style={styles} onMouseMove={this.manejador}>
//       <div>
//         x: {this.state.x}
//       </div>
//       <div>
//         y: {this.state.y}
//       </div>
//     </div>;
//   }
// }
// export default App;

//Ejemplo de eventos de input
// import React, { Component } from "react";

// class App extends Component{

//   state = {
//     text: '',
//     evento: ''
//   }

//   manejador = (event) => {
//     this.setState({
//       text: event.target.value,
//       evento: event.type
//     })
//   }
//   render() {
//     return(
//       <div>
//         <input type="text"
//         onChange={this.manejador}
//         onCopy={this.manejador}
//         onPaste={this.manejador}
//         />
//         <h1>
//           {this.state.text}
//         </h1>
//         <h2>
//           {this.state.evento}
//         </h2>
//       </div>
//     )
//   }
// }

// export default App;

//Ejemplo de evento nativo DOM y evento sintetico
// import React, {Component} from "react";

// class App extends Component{
//   manejador = (e) => {
//     e.preventDefault()
//   }

//   render(){
//     return (
//       <div>
//         <a href="https://google.com"
//         onClick={this.manejador}>
//           Google
//         </a>
//       </div>
//     )
//   }
// }

// export default App

//Ejemplo de conservar eventos en React
// import React, { Component } from "react";

// class PersistenciaEventos extends Component {
//   state = {
//     color: 'blue'
//   }

//   handlerChange = (event) => {
//     const color = event.target.value
//     this.setState(state => ({
//       color
//     }))
//   }

//   render() {
//     return (
//       <div>
//         <input type="text" onChange={this.handlerChange} />
//         <h1 style={{color: this.state.color}}>
//           {this.state.color}
//         </h1>
//       </div>
//     );
//   }
// }

// const App = () => (
//   <div>
//     <PersistenciaEventos />
//   </div>
// );
// export default App;

//Ejemplo de eventos personalizados
// import React, { Component } from "react";
// import "./global.css";

// class Hijo extends Component {
//   manejadorClick = () => {
//     this.props.onSaluda('Cris esta en React');
//   };

//   render() {
//     return (
//       <div className="box blue">
//         <h2>Hijo</h2>
//         <button onClick={this.manejadorClick}>Saluda</button>
//       </div>
//     );
//   }
// }
// class App extends Component {
//   state = {
//     name: ''
//   }

//   manejador = (name) => {
//     this.setState({name});
//   };

//   render() {
//     return (
//       <div className="box red">
//         <Hijo onSaluda={this.manejador} />
//         <h1>
//           Nombre: {this.state.name}
//         </h1>
//       </div>
//     );
//   }
// }
// export default App;

//Ejemplo de Renderizacion de condicionales en React
// import React, { Component } from "react";

// const Saludo = (props) => {
//   return (
//     <div>
//       <div>
//         {props.name && <strong>{props.name}</strong>}
//       </div>
//       {props.saluda ? (
//         <h1>Hola, tu eres genial!</h1>
//       ) : (
//         <p>Wops, no hay saludus para ti</p>
//       )}
//     </div>
//   );
// };

// const App = () => (
//   <div>
//     <Saludo saluda name='Christopher'/>
//   </div>
// );
// export default App;

//Ejemplo de Inyeccion HTML en marcado de componente
// import React, { Component } from "react";

// class App extends Component {
//   state = {
//     marcado: `
//       <h1>Inyectando HTML con React</h1>
//       <br/>
//       <hr/>
//       <a href="#">Algun link</a>
//     `,
//   };

//   render() {
//     return (
//       <div>
//         <div dangerouslySetInnerHTML={{ __html: this.state.marcado }}></div>
//       </div>
//     );
//   }
// }
// export default App;

//Ejemplo de prop Children
// import React from "react";

// const Title = (props) => {
//   const styles = {
//     padding: "0.3em",
//     color: "#FFF",
//     background: props.uiColor,
//     borderRadius: "0.3em",
//     textAlign: "center",
//     fontSize: "50px",
//   };

//   console.log(props.children)

//   return <h1 style={styles}>{props.children}</h1>;
// };
// class App extends React.Component {
//   state = {
//     uiColor: "purple",
//   };
//   render() {
//     return (
//       <div>
//         <Title uiColor={this.state.uiColor}>
//           Super<em>Christopher</em>
//         </Title>
//       </div>
//     );
//   }
// }

// export default App;
