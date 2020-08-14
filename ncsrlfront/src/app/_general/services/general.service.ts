import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { MenuItem } from 'primeng/api/menuitem';

@Injectable({
    providedIn: 'root'
})
export class GeneralService {

    items: MenuItem[];
    home: MenuItem;

    constructor(private http: HttpClient) {
        // var menu_item : MenuItem = { label: title }
        this.items = [];
        // this.items = [
        //     menu_item,
        // ];
        this.home = {icon: 'pi pi-home', url: '#'};
    }
    
    setTitle(titulos: string[]) {
        this.items = [];
        titulos.map((item : string) => {
            var menu_item : MenuItem = { label: item }
            this.items.push(menu_item);
        });
        // this.title = text;
    }

}
