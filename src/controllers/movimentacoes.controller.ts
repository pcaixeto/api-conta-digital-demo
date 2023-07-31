/* eslint-disable prettier/prettier */
import { Controller, Post, Get, Param, Body } from '@nestjs/common';
import { Movimentacao } from '../entities/movimentacao.entity';
import { MovimentacoesService } from '../services/movimentacoes.service';

@Controller('contas/:conta_id/movimentacoes')
export class MovimentacoesController {
  constructor(private readonly movimentacoesService: MovimentacoesService) {}

  @Post()
  async cadastroMovimentacao(@Param('conta_id') contaId: number,@Body() movimentacao: Movimentacao,) {
    return this.movimentacoesService.cadastroMovimentacao(contaId, movimentacao);
  }

  @Get()
  async consultaMovimentacoes(@Param('conta_id') contaId: number) {
    return this.movimentacoesService.consultaMovimentacoes(contaId);
  }
}
