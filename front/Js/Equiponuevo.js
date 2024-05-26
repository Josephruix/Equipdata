document.addEventListener('DOMContentLoaded', () => {
 
    fetch('http://localhost:3000/Salas')
        .then(response => {
            if (!response.ok) {
                throw new Error('Error al obtener los datos de las Salas');
            }
            return response.json();
        })
        .then(data => {
            const salaSelect = document.getElementById('idsala');
            data.forEach(sala => {
                const option = document.createElement('option');
                option.value = sala.Nombre;
                option.textContent = sala.Nombre;
                salaSelect.appendChild(option);
            });
        })
        .catch(error => {
            console.error('Error:', error);
        });

    document.getElementById('form-equipos').addEventListener('submit', function(event) {
        event.preventDefault();

        var Marca = document.getElementById('Marca').value;
        var Descripcion = document.getElementById('Descripcion').value;
        var Estado = document.getElementById('Estado').value;
        var Empresa = document.getElementById('Empresa').value;
        var Equipo = document.getElementById('Equipo').value;
        var Sala = document.getElementById('idsala').value;
        var serial = document.getElementById('idequipos').value;

        var datos = {
            Marca: Marca,
            Descripcion: Descripcion,
            Estado: Estado,
            Empresa: Empresa,
            Equipo: Equipo,
            Sala: Sala,
            serial: serial
        };

        fetch('http://localhost:3000/G-Equipos', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(datos)
        })
        .then(response => {
            if (!response.ok) {
                throw new Error('Error en la solicitud');
            }
            return response.json();
        })
        .then(data => {
            console.log('Respuesta del servidor:', data);
            document.getElementById('success-message').innerText = "Equipo añadido correctamente";
            alert("Equipo Añadido correctamente lo dirijeremos al la pagina principal")
            window.location.href = `/front/html/Salas.html`;
        })
        .catch(error => {
            console.error('Error:', error);
            if (error.mensaje) {
                document.getElementById('error').innerText = error.mensaje;
            } else {
                document.getElementById('error').innerText = "Error de conexión. Por favor, intenta de nuevo más tarde.";
            }
        });
    });
});