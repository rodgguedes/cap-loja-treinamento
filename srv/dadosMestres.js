const cds = require('@sap/cds');
const { SELECT } = require('@sap/cds/lib/ql/cds-ql');

module.exports = class DadosMestres extends cds.ApplicationService { init() {

  const { Materiais, Funcionario } = cds.entities('DadosMestres')

  this.before (['CREATE'], Materiais, async (req) => {
    const { codigo } = req.data;

    if(!codigo){
      return req.error(400, 'Preencher campos obrigatórios')
    }
  
    const oJaExiste = await SELECT.one.from(Materiais).where({ codigo: codigo });
    if(oJaExiste){
      req.error(400, "Código do Material Já Existente");
    }
  })

  return super.init()
}}
