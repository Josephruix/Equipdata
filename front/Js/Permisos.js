function mostrarBotonesSegunRol(Rol) {

    const botonesEliminarSalas = document.querySelectorAll('.eliminar-Salas');
    const botonesEliminarEquipos = document.querySelectorAll('.eliminar-equipo');

    if (Rol === 'admind') {
        botonesEliminarSalas.forEach(boton => {
            boton.style.display = 'block'; 
        });
        botonesEliminarEquipos.forEach(boton => {
            boton.style.display = 'block'; 
        });
    } else if (Rol === 'soporte') {
        botonesEliminarSalas.forEach(boton => {
            boton.style.display = 'none'; 
        });
        botonesEliminarEquipos.forEach(boton => {
            boton.style.display = 'none'; 
        });
    } else {
        botonesEliminarSalas.forEach(boton => {
            boton.style.display = 'none';
        });
        botonesEliminarEquipos.forEach(boton => {
            boton.style.display = 'none';
        });
    }

    
    return Rol;
}

const rolUsuario = localStorage.getItem('rolUsuario');

