using { my.loja.utilitarios as u } from '../db/schema';

service Utilitarios {

    @readonly
    entity Log as projection on u.Log;

}
