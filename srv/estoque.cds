using {my.loja.estoque as es} from '../db/schema';


service Estoque {
    entity Estoque as projection on es.Estoque;
    entity Reservas as projection on es.Reservas;
}