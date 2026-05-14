using {my.loja.dados_mestres as dm} from '../db/schema';

service DadosMestres {

    entity Materiais    as projection on dm.Material;
    entity Funcionarios as projection on dm.Funcionario;
}