import { Especialidade } from './especialidade';

export interface Medico {
    id: number;
    crm: number;
    nome: string;
    especialidade: Especialidade;
}
