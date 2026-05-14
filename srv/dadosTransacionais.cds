using {my.loja.dados_transacionais as dt} from '../db/schema';


service DadosTransacionais {

    entity PedidoHeader as projection on dt.PedidoHeader;

    @readonly
    entity PedidoItem   as projection on dt.PedidoItem;

    action confirmarPedido(pedidoId: UUID,
                           funcionarioId: UUID) returns {
        sucesso      : Boolean;
        mensagem     : String;
        numeroPedido : String;
    };
}
