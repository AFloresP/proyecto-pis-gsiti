import {Injectable} from "@angular/core";
import {User} from "../models/user.model";
import {Router} from "@angular/router";
import {MessageService} from "primeng/api";

@Injectable()
export class AuthService {
	public token: string;
	private usuario: string;
	public gotologin: boolean;
	private userJson: User;
    //public tablas: Tabla[];
    
	constructor(private messageService: MessageService, public router: Router) {

		this.token = localStorage.getItem("token");
		this.gotologin = false;
		//this.tablas = JSON.parse(localStorage.getItem("tablas"));
		//if (this.tablas) this.tablas = [];
	}

	public getusuarioJson(): User {
		if (this.userJson == null) {
			return (this.userJson = JSON.parse(localStorage.getItem("user"))); //new CryptoVar(this.appConfig).desencriptar(localStorage.getItem("userjson")));
		}
		return this.userJson;
	}
	public getlogin(): boolean {
		if (!this.gotologin) {
			if (localStorage.getItem("islogin") == "true") return true;
			return false;
		}
		return this.gotologin;
	}
	public isLogin(): boolean {
        if (localStorage.getItem("islogin") == "true") return true;
		return false;
	}

	ErrorServer() {
		this.messageService.add({
			severity: "error",
			summary: "Error",
			detail: "Hubo un error conectandose al servidor"
		});
	}
	addsmsError(sms: string) {
		this.messageService.add({severity: "error", summary: "Error", detail: sms});
	}
	addsmsWarn(sms: string) {
		this.messageService.add({severity: "warn", summary: "Advertencia", detail: sms});
	}
	addsmsSuccess(sms: string) {
		this.messageService.add({severity: "success", summary: "Operacion Exitosa", detail: sms});
    }
    addsmsInfo(sms: string) {
		this.messageService.add({severity: "info", summary: "Informacion", detail: sms});
	}

	public setData(user: User) {
		
		this.token = user.token;
		
		//this.usuario = user.usuario;
		user.token = "";
		// localStorage.setItem("menu", JSON.stringify(user.barMenu));
        // user.barMenu = [];
        
		localStorage.setItem("token", this.token);
		localStorage.setItem("islogin", "true");
        localStorage.setItem("user", JSON.stringify(user));
        
		this.userJson = user;
		this.gotologin = true;
	}

	logout() {
		localStorage.clear();
		this.router.navigate(["/login"]);
	}
}
