//Organizador de tornillos o componentes electrónicos pequeños

// 30 de septiembre de 2018

// variables necesarias para que sea totalmente paramétrico

altura_base = 1; // la altura de la base... parece lógico
altura_marco = 2; // pues eso
anchura_marco = 3;  // la separación entre los huecos
size_cuadro_x = 15; // el tamaño de cada cuadro en el eje x
size_cuadro_y = 20; // el tamaño en y
cantidad_x = 5; //el número de cuadros en el eje x
cantidad_y = 2; // el número de cuadros en el eje y

//listo... no se me ocurren más parametrizaciones
// la pieza en sí es una resta de un cubo y una iteración de cubos
// ahí vamos... primero la resta simple

difference()
{
    union()
    {
        //aquí el cubo principal
        cube([cantidad_x * (size_cuadro_x + anchura_marco) + anchura_marco, cantidad_y * (size_cuadro_y + anchura_marco) + anchura_marco, altura_base + altura_marco]); //
    }
    union()
    {
        for (y = [anchura_marco : size_cuadro_y + anchura_marco: cantidad_y * (anchura_marco + size_cuadro_y) ])
            {
            for (x = [anchura_marco : size_cuadro_x + anchura_marco: cantidad_x * (anchura_marco +  size_cuadro_x) ])
            { 
            translate([x, y ,altura_base]) cube([size_cuadro_x, size_cuadro_y, 2 * altura_marco]);
            }
        }
    }
}
//listo... que lo busques en github jeje

