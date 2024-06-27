<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Date" %>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Nuevo JSP con Bootstrap</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
  </head>
  <body>
        <main id="main">
            <header>
                <h1 id="title">Mascotas!</h1>
              <p id="description">Describe a tu mascota</p>  
          </header>
            <form id="survey-form">
                <div class="form-section">
                    <label for="name" id="name-label">Nombre</label>
                    <input type="text" name="name" id="name" class="form-input" placeholder="Ingresa su nombre" required>
                </div>
                <div class="form-section">
                    <label for="age" id="number-label">Edad</label>
                    <input type="number" name="age" id="number" class="form-input" placeholder="Ingresa su edad" min="1" max="100" required>
                </div>
                <div class="form-section">
                    <p>Selecciona su especie<p>
                    <select id="dropdown" required>
                        <option disabled selected>Seleciona una opción</option>
                        <option value="dog">Perro</option>
                        <option value="cat">Gato</option>
                        <option value="fish">Pez</option>
                        <option value="bird">Pajaro</option>
                        <option value="other">Otro</option>
                    </select>
                </div>
                <div class="form-section">
                    <p>Como es tu mascota?</p>
                    <label>
                        <input name="user-pet" type="checkbox" value="friendly">Amistosa
                    </label>
                    <label>
                        <input name="user-pet" type="checkbox" value="playful">Juguetona
                    </label>
                    <label>
                        <input name="user-pet" type="checkbox"  value="gluttonous">Glotona
                    </label>
                    <label>
                        <input name="user-pet" type="checkbox" value="sleepyhead">Dormilona
                    </label>
                    <label>
                        <input name="user-pet" type="checkbox" value="angry">Enojona
                    </label>
                    <label>
                        <input name="user-pet" type="checkbox" value="fat">Gorda
                    </label>
                    <label>
                        <input name="user-pet" type="checkbox" value="skinny">Flaca
                    </label>
                    <label>
                        <input name="user-pet" type="checkbox" value="normal">Normal
                    </label>
                    
                </div>
                <div class="form-section">
                    <button type="submit" id="submit">
                        Submit
                    </button>
                </div>
            </form>
        </main>
    </body>
</html>