import React from "react";
import styles from './tarjetaFruta.module.css' 
// import './tarjetaFruta.css'

class TarjetaFruta extends React.Component {
  // METHODS: Usar este metodo es mejor porque no impacta en rendimiento
  // constructor() {
  //   super();
  //   const METHODS = ["agregar", "eliminar", "limpiar"];
  //   METHODS.forEach((method) => {
  //     this[method] = this[method].bind(this);
  //   });

  //   this.state = {
  //     cantidad: 0,
  //   };
  // }

  // agregar() {
  //   this.setState({
  //     cantidad: this.state.cantidad + 1,
  //   });
  // }
  // eliminar() {
  //   this.setState({
  //     cantidad: this.state.cantidad - 1,
  //   });
  // }
  // limpiar() {
  //   this.setState({
  //     cantidad: 0,
  //   });
  // }

  //Inicializador de Propiedad: este metodo es para tener mas legible el codigo pero no es estandar
  state = {
    cantidad: 0,
  };

  agregar = () =>
    this.setState({
      cantidad: this.state.cantidad + 1,
    });

  eliminar = () =>
    this.setState({
      cantidad: this.state.cantidad - 1,
    });

  limpiar = () =>
    this.setState({
      cantidad: 0,
    });

  render() {
    /*Estilos en Linea CSS. Para utilizar ese metodo se le debe llamar en el primer <div> de esta manera:
    <div style:{styles}></div>*/
    
    //const hasItems = this.state.cantidad > 0 
    // const styles = {
    //   border: "1px solid black",
    //   marginBottom: '1em',
    //   borderRadius: '0.5em',
    //   padding: '1em',
    //   background: hasItems > 0 ? 'linear-gradient(45deg, black, #4a02f7)' : '#FFF',
    //   color: hasItems > 0 ? '#FFF' : '#000',
    //   transition: 'all 400ms ease-out'
    // };
    const hasItems = this.state.cantidad > 0
    const activeClass = hasItems ? styles['card-active'] : ''
    const clases = styles.card + ' ' + activeClass

    return (
      <div className={clases}>
        <h3>{this.props.name}</h3>
        <hr />
        <div>Cantidad: {this.state.cantidad}</div>
        <button onClick={this.agregar}>+</button>
        <button onClick={this.eliminar}>-</button>
        <button onClick={this.limpiar}>limpiar</button>
        <p>$ {this.props.price}</p>
        <p>
            Total: ${this.props.price * this.state.cantidad}
        </p>
      </div>
    );
  }
}

export default TarjetaFruta;
