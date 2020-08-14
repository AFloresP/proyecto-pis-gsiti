import { Banco } from './banco.model';
import { Colaborador } from './colaborador.model';
import { Direccion } from './direccion.model';

export class Proveedor {
    id_prov: number;
    razsoc_prov: string;
    ema_prov: string;
    id_tipdoc: number;
    num_doc_prov: string;
    bancos: Banco[];
    colaboradores: Colaborador[];
    direcciones: Direccion[];
    est_reg: string;
    create_at: Date;
    update_at: Date;
}
