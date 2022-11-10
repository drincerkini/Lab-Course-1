import axios, { AxiosResponse } from "axios";
import { AutoriBoterorModel } from "../models/AutoriBoterorModel";
import { AutoriModel } from "../models/AutoriModel";
import { EkipaModel } from "../models/EkipaModel";
import { KomenteModel } from "../models/KomenteModel";
import { KontaktiModel } from "../models/KontaktiModel";
import { LibraBoterorModel } from "../models/LibraBoterorModel";
import { LibraPerFemijeModel } from "../models/LibraPerFemijeModel";
import { LibraTeRinjModel } from "../models/LibraTeRinjModel";
import { LibriModel } from "../models/LibriModel";
import { PublikimeModel } from "../models/PublikimeModel";
import { RevistaModel } from "../models/RevistaModel";
import { TekstiModel } from "../models/TekstiModel";

const sleep = (delay: number) => {
  return new Promise((resolve) => {
    setTimeout(resolve, delay);
  });
};

axios.defaults.baseURL = "https://localhost:7067";

axios.interceptors.response.use(async (response) => {
  try {
        await sleep(750);
        return response;
    } catch (error) {
        console.log(error);
        return await Promise.reject(error);
    }
});

const responseBody = <T>(response: AxiosResponse<T>) => response.data;

//stores http requests
const requests = {
  get: <T>(url: string) => axios.get<T>(url).then(responseBody),
  post: <T>(url: string, body: {}) =>axios.post<T>(url, body).then(responseBody),
  put: <T>(url: string, body: {}) => axios.put<T>(url, body).then(responseBody),
  delete: <T>(url: string) => axios.delete<T>(url).then(responseBody),
};

const Librat = {
  list: () => requests.get<LibriModel[]>('/Librat'),
  details:(id: number)=>requests.get<LibriModel>(`/Librat/${id}`),
  create:(libri:LibriModel)=>requests.post<void>('/Librat', libri ),
  update:(libri:LibriModel)=>requests.put<void>(`/Librat/${libri.id}`, libri),
  delete:(id:number)=>requests.delete<void>(`/Librat/${id}`)
};

const Tekstet = {
  list: () => requests.get<TekstiModel[]>('/Tekstet'),
  details:(id: number)=>requests.get<TekstiModel>(`/Tekstet/${id}`),
  create:(teksti:TekstiModel)=>requests.post<void>('/Tekstet', teksti ),
  update:(teksti:TekstiModel)=>requests.put<void>(`/Tekstet/${teksti.id}`, teksti),
  delete:(id:number)=>requests.delete<void>(`/Tekstet/${id}`)
};

const Revistat = {
  list: () => requests.get<RevistaModel[]>('/Revistat'),
  details:(id: number)=>requests.get<RevistaModel>(`/Revistat/${id}`),
  create:(revista:RevistaModel)=>requests.post<void>('/Revistat', revista ),
  update:(revista:RevistaModel)=>requests.put<void>(`/Revistat/${revista.id}`, revista),
  delete:(id:number)=>requests.delete<void>(`/Revistat/${id}`)
}

const Autoret = {
  list: () => requests.get<AutoriModel[]>('/Autori'),
  details:(id: number)=>requests.get<AutoriModel>(`/Autori/${id}`),
  create:(autori:AutoriModel)=>requests.post<void>('/Autori', autori ),
  update:(autori:AutoriModel)=>requests.put<void>(`/Autori/${autori.id}`, autori),
  delete:(id:number)=>requests.delete<void>(`/Autori/${id}`)
}

const Publikime = {
  list: () => requests.get<PublikimeModel[]>('/Publikime'),
  details:(id: number)=>requests.get<PublikimeModel>(`/Publikime/${id}`),
  create:(publikime:PublikimeModel)=>requests.post<void>('/Publikime', publikime ),
  update:(publikime:PublikimeModel)=>requests.put<void>(`/Publikime/${publikime.id}`, publikime),
  delete:(id:number)=>requests.delete<void>(`/Publikime/${id}`)
}

const LibraTeRinj = {
  list: () => requests.get<LibraTeRinjModel[]>('/LibraTeRinj'),
  details:(id: number)=>requests.get<LibraTeRinjModel>(`/LibraTeRinj/${id}`),
  create:(libraTeRinj:LibraTeRinjModel)=>requests.post<void>('/LibraTeRinj', libraTeRinj ),
  update:(libraTeRinj:LibraTeRinjModel)=>requests.put<void>(`/LibraTeRinj/${libraTeRinj.id}`, libraTeRinj),
  delete:(id:number)=>requests.delete<void>(`/LibraTeRinj/${id}`)
}

const LibraBoteror = {
  list: () => requests.get<LibraBoterorModel[]>('/LibraBoteror'),
  details:(id: number)=>requests.get<LibraBoterorModel>(`/LibraBoteror/${id}`),
  create:(libraBoteror:LibraBoterorModel)=>requests.post<void>('/LibraBoteror', libraBoteror ),
  update:(libraBoteror:LibraBoterorModel)=>requests.put<void>(`/LibraBoteror/${libraBoteror.id}`, libraBoteror),
  delete:(id:number)=>requests.delete<void>(`/LibraBoteror/${id}`)
}

const Ekipa = {
  list: () => requests.get<EkipaModel[]>('Ekipa'),
  details:(id: number)=>requests.get<EkipaModel>(`/Ekipa/${id}`),
  create:(ekipa:EkipaModel)=>requests.post<void>('/Ekipa', ekipa),
  update:(ekipa:EkipaModel)=>requests.put<void>(`/Ekipa/${ekipa.id})`, ekipa),
  delete:(id:number)=>requests.delete<void>(`/Ekipa/${id}`)
}

const AutoriBoteror = {
  list: () => requests.get<AutoriBoterorModel[]>('/AutoriBoteror'),
  details:(id: number)=>requests.get<AutoriBoterorModel>(`/AutoriBoteror/${id}`),
  create:(autoriBoteror:AutoriBoterorModel)=>requests.post<void>('/AutoriBoteror', autoriBoteror ),
  update:(autoriBoteror:AutoriBoterorModel)=>requests.put<void>(`/AutoriBoteror/${autoriBoteror.id}`, autoriBoteror),
  delete:(id:number)=>requests.delete<void>(`/AutoriBoteror/${id}`)
}

const LibratPerFemije = {
  list: () => requests.get<LibraPerFemijeModel[]>('/LibratPerFemije'),
  details:(id: number)=>requests.get<LibraPerFemijeModel>(`/LibratPerFemije/${id}`),
  create:(libraPerFemije:LibraPerFemijeModel)=>requests.post<void>('/LibratPerFemije', libraPerFemije ),
  update:(libraPerFemije:LibraPerFemijeModel)=>requests.put<void>(`/LibratPerFemije/${libraPerFemije.id}`, libraPerFemije),
  delete:(id:number)=>requests.delete<void>(`/LibratPerFemije/${id}`)
}

const Kontakti = {
  list: () => requests.get<KontaktiModel[]>('/Kontakti'),
  details:(id: number)=>requests.get<KontaktiModel>(`/Kontakti/${id}`),
  create:(kontakti:KontaktiModel)=>requests.post<void>('/Kontakti', kontakti ),
  update:(kontakti:KontaktiModel)=>requests.put<void>(`/Kontakti/${kontakti.id}`, kontakti),
  delete:(id:number)=>requests.delete<void>(`/Kontakti/${id}`)
}

const Komente = {
  list: () => requests.get<KomenteModel[]>('/Komente'),
  details:(id: number)=>requests.get<KomenteModel>(`/Komente/${id}`),
  create:(komente:KomenteModel)=>requests.post<void>('/Komente', komente ),
  update:(komente:KomenteModel)=>requests.put<void>(`/Komente/${komente.id}`, komente),
  delete:(id:number)=>requests.delete<void>(`/Komente/${id}`)
}




const agent = {
  Librat,
  Tekstet,
  Revistat,
  Autoret,
  Publikime,
  LibraTeRinj,
  LibraBoteror,
  Ekipa,
  AutoriBoteror,
  LibratPerFemije,
  Kontakti,
  Komente
};

export default agent;
