import { createContext, useContext } from "react";
import AutoriStore from "./autoriStore";
import EkipaStore from "./ekipaStore";
import LibraBoterorStore from "./libraBoterorStore";
import LibraTeRinjStore from "./libraTeRinjStore";
import LibriStore from "./libriStore";
import PublikimeStore from "./publikimeStore";
import RevistaStore from "./revistaStore";
import TekstiStore from "./tekstiStore";
import AutoriBoterorStore from "./autoriBoterorStore";
import LibraPerFmijeStore from "./libraPerFemijeStore";
import KontaktiStore from "./kontaktiStore";
import KomenteStore from "./komenteStore";


interface Store{
    libriStore:LibriStore
    tekstiStore:TekstiStore
    revistaStore:RevistaStore
    autoriStore:AutoriStore
    publikimeStore:PublikimeStore
    libraTeRinjStore:LibraTeRinjStore
    libraBoterorStore:LibraBoterorStore
    ekipaStore:EkipaStore
    autoriBoterorStore:AutoriBoterorStore
    libraPerFemijeStore:LibraPerFmijeStore
    kontaktiStore:KontaktiStore
    komenteStore:KomenteStore

}

export const store:Store={
    libriStore:new LibriStore(),
    tekstiStore:new TekstiStore(),
    revistaStore:new RevistaStore(),
    autoriStore:new AutoriStore(),
    publikimeStore:new PublikimeStore(),
    libraTeRinjStore:new LibraTeRinjStore(),
    libraBoterorStore:new LibraBoterorStore(),
    ekipaStore:new EkipaStore(),
    autoriBoterorStore: new AutoriBoterorStore(),
    libraPerFemijeStore: new LibraPerFmijeStore(),
    kontaktiStore: new KontaktiStore(),
    komenteStore: new KomenteStore()

}

export const StoreContext=createContext(store);

export function useStore(){
    return useContext(StoreContext);
}