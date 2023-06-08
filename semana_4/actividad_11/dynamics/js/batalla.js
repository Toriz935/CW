//aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa tuve que repetir el código este como 3 veces pq nomás no me salía, y sigue sin salirme

//----------sinceramente no sé lo que hago ayuda, ya llevo como una semana y nomás no me sale

//batalla pokemón
//entrenadores pokemon

//movimientos pokemon
const pok = ["p1", "p2", "p3", "p4", "p5", "p6"];
let i = 0;
let daño = 0;
const players = ["entrenador", "rival", "entrenador", "rival", "entrenador", "rival", "entrenador", "rival", "entrenador", "rival",]
class entrenadores {
    constructor(nombre, reg_origen, medallas, poke1, poke2, poke3, poke4, poke5, poke6) {
        this.nom = nombre;
        this.reg = reg_origen;
        this.med = medallas;
        this.p1 = poke1;
        this.p2 = poke2;
        this.p3 = poke3;
        this.p4 = poke4;
        this.p5 = poke5;
        this.p6 = poke6;
    }
    combatir(entrenador) {//esto va a hacer la respuesta del entenador rival (espero)
        if (pok_r[i].hp >= 0) {

        }


    }
    // // Función daño 0.01x85[([0.2xN+1]xAxP)/25+D]
    // //N=Nivel del Pokémon que ataca gfd br  
    // // A=Ataque/Ataque especial del Pokémon que ataca 
    // // D=Defensa/Defensa especial del Pokémon que recibe el ataque 
    // // P= Potencia del movimiento
}
class movimiento {
    constructor(nom_movimiento, tipo_ataque, potencia, probabilidad) {
        this.nom = nom_movimiento;
        this.t_ataque = tipo_ataque;
        this.po = potencia;
        this.prob = probabilidad;
    };
};
// function daño(){

// }
//pokemones
class poke {
    constructor(nom_poke, hp, ataque, ataque_esp, def, def_esp, vel, tipo1, tipo2, nivel, mov1, mov2, mov3, mov4) {
        this.nom = nom_poke;
        this.hp = hp;
        this.atk = ataque;
        this.atk_esp = ataque_esp;
        this.def = def;
        this.def_esp = def_esp;
        this.vel = vel;
        this.tipo1 = tipo1;
        this.tipo2 = tipo2;
        this.nivel = nivel;
        this.mov1 = mov1;
        this.mov2 = mov2;
        this.mov3 = mov3;
        this.mov4 = mov4;
    };
    atacar_m1(rival) {

        if (rival.p1.hp >= 0) {//se supone q me iba a ir bien en esta activiad, me gusta pokemon :(
            // // Función daño 0.01x85[([0.2xN+1]xAxP)/25+D]
            let niv = 0.2 * this.nivel + 1;
            let ap = this.atk * adaptacion.po;
            // let niap = niv*ap;
            // let ni25 = niap/25;
            // let mult = 0.01*85;
            // let nihp = ni25+(rival.p1.def);
            // let daño = mult*nihp;
            daño = 0.01 * 85 * ((niv * ap) / 25 + rival.p1.def)
            rival.p1.hp = rival.p1.hp - daño;
            console.log(this.nom + " ha usado " + this.mov1 + " en " + rival.p1.nom);
            console.log("ha hecho un total de: " + daño + " puntos de daño.");
            if (rival.p1.hp <= 0) {
                console.log(rival.p1.nom + " se ha debilitado")

            }
        } else {
            if (rival.p2.hp >= 0) {
                let niv = 0.2 * this.nivel + 1;
                let ap = this.atk * adaptacion.po;
                daño = 0.01 * 85 * ((niv * ap) / 25 + rival.p2.def)
                rival.p2.hp = rival.p2.hp - daño;
                console.log(this.nom + " ha usado " + this.mov1 + " en " + rival.p2.nom);
                console.log("ha hecho un total de: " + daño + " puntos de daño.");
                if (rival.p2.hp <= 0) {
                    console.log(rival.p2.nom + " se ha debilitado")
                    console.log("FELICIDADES has ganado")
                }
            }
        }


    }
    atacar_m2(rival) {
        if (rival.p1.hp >= 0) {
            let niv = 0.2 * this.nivel + 1;
            let ap = this.atk * asta_drenaje.po;
            daño = 0.01 * 85 * ((niv * ap) / 25 + rival.p1.def)
            rival.p1.hp = rival.p1.hp - daño;
            console.log(this.nom + " ha usado " + this.mov2 + " en " + rival.p1.nom);
            console.log("ha hecho un total de: " + daño + " puntos de daño.");
            if (rival.p1.hp <= 0) {
                console.log(rival.p1.nom + " se ha debilitado")
            }
        } else {
            if (rival.p2.hp >= 0) {
                let niv = 0.2 * this.nivel + 1;
                let ap = this.atk * asta_drenaje.po;
                daño = 0.01 * 85 * ((niv * ap) / 25 + rival.p2.def)
                rival.p2.hp = rival.p2.hp - daño;
                console.log(this.nom + " ha usado " + this.mov2 + " en " + rival.p2.nom);
                console.log("ha hecho un total de: " + daño + " puntos de daño.");
                if (rival.p2.hp <= 0) {
                    console.log(rival.p2.nom + " se ha debilitado")
                    console.log("FELICIDADES has ganado")
                }
            }
        }
        // if (salud_r <= 0) {
        //     console.log("Felicidades, has ganado");
        // }

    }
    atacar_m3(rival) {
        if (rival.p1.hp >= 0) {
            let niv = 0.2 * this.nivel + 1;
            let ap = this.atk * fuerza_lunar.po;
            daño = 0.01 * 85 * ((niv * ap) / 25 + rival.p1.def_esp)
            rival.p1.hp = rival.p1.hp - daño;
            console.log(this.nom + " ha usado " + this.mov3 + " en " + rival.p1.nom);
            console.log("ha hecho un total de: " + daño + " puntos de daño.");
            if (rival.p1.hp <= 0) {
                console.log(rival.p1.nom + " se ha debilitado")
            }
        }
        else {
            if (rival.p2.hp >= 0) {
                let niv = 0.2 * this.nivel + 1;
                let ap = this.atk_esp * fuerza_lunar.po;
                daño = 0.01 * 85 * ((niv * ap) / 25 + rival.p2.def_esp)
                rival.p2.hp = rival.p2.hp - daño;
                console.log(this.nom + " ha usado " + this.mov3 + " en " + rival.p2.nom);
                console.log("ha hecho un total de: " + daño + " puntos de daño.");
                if (rival.p2.hp <= 0) {
                    console.log(rival.p2.nom + " se ha debilitado")
                    console.log("FELICIDADES has ganado")
                }
            }
        }
        if (salud_r <= 0) {
            console.log("Felicidades, has ganado");
        }
    }
    atacar_m4(rival) {
        if (rival.p1.hp >= 0) {
            let niv = 0.2 * this.nivel + 1;
            let ap = this.atk_esp * campo_niebla.po;
            daño = 0.01 * 85 * ((niv * ap) / 25 + rival.p1.def_esp)
            rival.p1.hp = rival.p1.hp - daño;
            console.log(this.nom + " ha usado " + this.mov4 + " en " + rival.p1.nom);
            console.log("ha hecho un total de: " + daño + " puntos de daño.");
            if (rival.p1.hp <= 0) {
                console.log(rival.p1.nom + " se ha debilitado")
            }
        } else {
            if (rival.p2.hp >= 0) {//no me gusta lo anidada que está esta cosa
                let niv = 0.2 * this.nivel + 1;
                let ap = this.atk_esp * campo_niebla.po;
                daño = 0.01 * 85 * ((niv * ap) / 25 + rival.p2.def_esp)
                rival.p2.hp = rival.p2.hp - daño;
                console.log(this.nom + " ha usado " + this.mov4 + " en " + rival.p2.nom);
                console.log("ha hecho un total de: " + daño + " puntos de daño.");
                if (rival.p2.hp <= 0) {
                    console.log(rival.p2.nom + " se ha debilitado")
                    console.log("FELICIDADES has ganado")
                }
            }
        }
        if (salud_r <= 0) {
            console.log("Felicidades, has ganado");
        }
    }

};
//poke1 Xerneas
let adaptacion = new movimiento("Adaptación", "fisico", 50, 100);
let asta_drenaje = new movimiento("Asta Drenaje", "fisico", 75, 100);
let fuerza_lunar = new movimiento("Fuerza Lunar", "escpecial", 95, 100);
let campo_niebla = new movimiento("Campo de Niebla", "especial", 0, 100);

let xerneas = new poke("Xerneas", 416, 270, 311, 241, 270, 253, "Hada", "", 100, adaptacion.nom, asta_drenaje.nom, fuerza_lunar.nom, campo_niebla.nom);

//poke2 Delphox
let psicorrayo = new movimiento("Psicorrayo", "fisico", 65, 100);
let nitrocarga = new movimiento("Nitrocarga", "fisico", 50, 100);
let zona_magica = new movimiento("Zona Mágica", "status, 0, 100");
let voto_fuego = new movimiento("Voto Fuego", "especial", 0, 100);

let delphox = new poke("Delphox", 194, 142, 207, 120, 174, 196, "fuego", "psiquico", psicorrayo.nom, nitrocarga.nom, zona_magica.nom, voto_fuego.nom);

//poke3 Rayquaza
let ascenso_draco = new movimiento("Ascenso Draco", "fisico", 120, 100);
let garra_dragon = new movimiento("Garra Dragón", "fisico", 80, 10);
let vel_extrema = new movimiento("Velocidad Extrema", "especial", 80, 100);
let vuelo = new movimiento("Vuelo", "especial", 90, 95);

let rayquaza = new poke("Rayquaza", 349, 346, 256, 203, 204, 212, "dragón", "volador", 89, ascenso_draco, garra_dragon, vel_extrema, vuelo);

//poke4 Alakazam
let gran_ojo = new movimiento("Gran Ojo", "fisico", 10,10);
let kinetico = new movimiento("Kinético", "fisico",  10, 80);
let recuperacion = new movimiento("Recuperación", "especial", 10,10);
let psiquico = new movimiento("Psíquico", "especial", 90,100);
////--------------------------------------------------------------------------------------///
let entrenador = new entrenadores("Alex", "Kalos", 7, xerneas, null, null, null, null, null);
let rival = new entrenadores("Jatz", "Unova", 8, delphox, rayquaza, null, null, null, null,);//no c pq el nombre, solo apreté teclas al azar

//---------------------------------------------------------------------------------------//
const pok_r = ["rival.p1", "rival.p2", "rival.p3", "rival.p4", "rival.p5", "rival.p6"];
const pok_e = ["entrenador.p1", "entrenador.p2", "entrenador.p3", "entrenador.p4", "entrenador.p5", "entrenador.p6"];
const salud_r = [rival.p1.hp + rival.p2.hp]// + rival.p3.hp + rival.p4.hp + rival.p5.hp + rival.p6.hp];
// entrenador.combatir(rival);
// console.log(delphox.hp);
// console.log(rayquaza.hp)
// entrenador.p1.atacar_m2(rival);

// // console.log(delphox.hp);
// // console.log(salud_r);
// entrenador.p1.atacar_m4(rival);
// entrenador.p1.atacar_m3(rival);
// // console.log(rayquaza.hp)
// // console.log(pok_e[1])
//--------------------------------------------------------//
//La idea original era hacer q todo fuera automático, q los movimientos y los pokes en combate fueran aleatorios, pero por las dificultades 
//se redujo rápidamente a lo que sea que es esto, sé que no es lo mejor o si quiera está completo pero juro que hize lo que pude.