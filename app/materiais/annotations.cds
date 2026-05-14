using DadosMestres as service from '../../srv/dadosMestres';
annotate service.Materiais with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'codigo',
                Value : codigo,
            },
            {
                $Type : 'UI.DataField',
                Label : 'descricao',
                Value : descricao,
            },
            {
                $Type : 'UI.DataField',
                Label : 'unidade',
                Value : unidade,
            },
            {
                $Type : 'UI.DataField',
                Label : 'precoBase',
                Value : precoBase,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ativo',
                Value : ativo,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Codigo',
            Value : codigo,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Descricao',
            Value : descricao,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Unidade',
            Value : unidade,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Preco Base',
            Value : precoBase,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Ativo',
            Value : ativo,
        },
    ],
    UI.SelectionFields : [
        codigo,
        descricao,
        unidade,
        ativo
    ]
);

annotate service.Materiais with {
    codigo @Common.Label : 'Codigo';
    descricao @Common.Label : 'Descrição';
    unidade @Common.Label : 'Unidade';
    ativo @Common.Label : 'Ativo';
};

