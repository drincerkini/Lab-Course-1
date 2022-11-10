import { Container } from "semantic-ui-react";
import NavBar from "./NavBar";
import LibriDashboard from "../../features/librat/dashboard/LibriDashboard";
import { observer } from "mobx-react-lite";
import { Route, useLocation } from "react-router-dom";
import LibriForm from "../../features/librat/form/LibriForm";
import LibriModelDetails from "../../features/librat/details/LibriModelDetails";
import TekstiForm from "../../features/tekstet/form/TekstiForm";
import TekstiDashboard from "../../features/tekstet/dashboard/TekstiDashboard";
import TekstiModelDetails from "../../features/tekstet/details/TekstiModelDetails";
import RevistaDashboard from "../../features/revistat/dashboard/RevistaDashboard";
import RevistaModelDetails from "../../features/revistat/details/RevistaModelDetails";
import RevistaForm from "../../features/revistat/form/RevistaForm";
import Home from "./Home";
import AutoriDashboard from "../../features/autoret/dashboard/AutoriDashboard";
import AutoriModelDetails from "../../features/autoret/details/AutoriModelDetails";
import AutoriForm from "../../features/autoret/form/AutoriForm";
import PublikimeDashboard from "../../features/publikimet/dashboard/PublikimeDashboard";
import PublikimeModelDetails from "../../features/publikimet/details/PublikimeModelDetails";
import PublikimeForm from "../../features/publikimet/form/PublikimeForm";
import LibraTeRinjDashboard from "../../features/libraterinj/dashboard/LibraTeRinjDashboard";
import LibraTeRinjForm from "../../features/libraterinj/form/LibraTeRinjForm";
import LibraTeRinjModelDetails from "../../features/libraterinj/details/LibraTeRinjModelDetails";
import LibraBoterorForm from "../../features/libraboteror/form/LibraBoterorForm";
import LibraBoterorModelDetails from "../../features/libraboteror/details/LibraBoterorModelDetails";
import LibraBoterorDashboard from "../../features/libraboteror/dashboard/LibraBoterorDashboard";
import Footer from "./Footer";
import About from "./About";
import EkipaDashboard from "../../features/ekipa/dashboard/EkipaDashboard";
import EkipaModelDetails from "../../features/ekipa/details/EkipaModelDetails";
import EkipaForm from "../../features/ekipa/form/EkipaForm";
import AutoriBoterorDashboard from "../../features/autoretBoteror/dashboard/AutoriBoterorDashboard";
import AutoriBoterorModelDetails from "../../features/autoretBoteror/details/AutoriBoterorModelDetails";
import AutoriBoterorForm from "../../features/autoretBoteror/form/AutoriBoterorForm";
import LibraPerFemijeDashboard from "../../features/libraperfemije/dashboard/LibraPerFemijeDashboard";
import LibraPerFemijeModelDetails from "../../features/libraperfemije/details/LibraPerFemijeModelDetails";
import LibraPerFemijeForm from "../../features/libraperfemije/form/LibraPerFemijeForm";
import KontaktiDashboard from "../../features/kontakti/dashboard/KontaktiDashboard";
import KontaktiModelDetails from "../../features/kontakti/details/KontaktiModelDetails";
import KontaktiForm from "../../features/kontakti/form/KontaktiForm";
import KomenteDashboard from "../../features/komente/dashboard/KomenteDashboard";
import KomenteModelDetails from "../../features/komente/details/KomenteModelDetails";
import KomenteForm from "../../features/komente/form/KomenteForm";
import KontaktiList from "../../features/kontakti/dashboard/KontaktiList";

function App() {
  const location = useLocation();

  return (
    <>
    <NavBar />
      <Route exact path="/" component={Home} />
      <Route path={"/home"} component={Home} />
      <Route path={"/about"} component={About} />
      <Route
        path="/(.+)"
        render={() => (
          <>
            
            <Container style={{ marginTop: "7em" }}>
              <Route exact path="/librat" component={LibriDashboard} />
              <Route path="/librat/:id" component={LibriModelDetails} />
              <Route
                key={location.key}
                path={["/createLibri", "/manage1/:id"]}
                component={LibriForm}
              />
            </Container>

            {/* routing per tekstet */}
            <Container style={{ marginTop: "7em" }}>
              <Route exact path="/tekstet" component={TekstiDashboard} />
              <Route path="/tekstet/:id" component={TekstiModelDetails} />
              <Route
                key={location.key}
                path={["/createTeksti", "/manage2/:id"]}
                component={TekstiForm}
              />
            </Container>
            

            <Container style={{ marginTop: "7em" }}>
              <Route exact path="/revistat" component={RevistaDashboard} />
              <Route path="/revistat/:id" component={RevistaModelDetails} />
              <Route
                key={location.key}
                path={["/createRevista", "/manage5/:id"]}
                component={RevistaForm}
              />
            </Container>

            <Container style={{ marginTop: "7em" }}>
              <Route exact path="/autoret" component={AutoriDashboard} />
              <Route path="/autoret/:id" component={AutoriModelDetails} />
              <Route
                key={location.key}
                path={["/createAutori", "/manage8/:id"]}
                component={AutoriForm}
              />
            </Container>
            
            <Container style={{ marginTop: "7em" }}>
              <Route exact path="/publikime" component={PublikimeDashboard} />
              <Route path="/publikime/:id" component={PublikimeModelDetails} />
              <Route
                key={location.key}
                path={["/createPublikime", "/manage9/:id"]}
                component={PublikimeForm}
              />
            </Container>
            
            <Container style={{ marginTop: "7em" }}>
              <Route exact path="/libraTeRinj" component={LibraTeRinjDashboard} />
              <Route path="/libraTeRinj/:id" component={LibraTeRinjModelDetails} />
              <Route
                key={location.key}
                path={["/createLibraTeRinj", "/manage10/:id"]}
                component={LibraTeRinjForm}
              />
            </Container>

           { <Container style={{ marginTop: "7em" }}>
              <Route exact path="/libraBoteror" component={LibraBoterorDashboard} />
              <Route path="/libraBoteror/:id" component={LibraBoterorModelDetails} />
              <Route
                key={location.key}
                path={["/createLibraBoteror", "/manage11/:id"]}
                component={LibraBoterorForm}
              />
            </Container> }

            { <Container style={{ marginTop: "7em" }}>
              <Route exact path="/ekipa" component={EkipaDashboard} />
              <Route path="/ekipa/:id" component={EkipaModelDetails} />
              <Route
                key={location.key}
                path={["/createEkipa", "/manage13/:id"]}
                component={EkipaForm}
              />
            </Container> }

            { <Container style={{ marginTop: "7em" }}>
              <Route exact path="/autoriBoteror" component={AutoriBoterorDashboard} />
              <Route path="/autoriBoteror/:id" component={AutoriBoterorModelDetails} />
              <Route
                key={location.key}
                path={["/createAutoriBoteror", "/manage15/:id"]}
                component={AutoriBoterorForm}
              />
            </Container> }

            { <Container style={{ marginTop: "7em" }}>
              <Route exact path="/libraPerFemije" component={LibraPerFemijeDashboard} />
              <Route path="/libraPerFemije/:id" component={LibraPerFemijeModelDetails} />
              <Route
                key={location.key}
                path={["/createLibraPerFemije", "/manage14/:id"]}
                component={LibraPerFemijeForm}
              />
            </Container> }

            { <Container style={{ marginTop: "7em" }}>
              <Route exact path="/kontakti" component={KontaktiDashboard} />
              <Route path="/komente/:id" component={KomenteModelDetails} />
              <Route
                key={location.key}
                path={["/shfaqKontaktet", "/manage19/:id"]}
                component={KontaktiList}
              />
            </Container> }

            { <Container style={{ marginTop: "7em" }}>
              <Route exact path="/komente" component={KomenteDashboard} />
              <Route path="/komente/:id" component={KomenteModelDetails} />
              <Route
                key={location.key}
                path={["/createKomente", "/manage18/:id"]}
                component={KomenteForm}
              />
            </Container> }

            
          </>
        )}
      />
      <Footer />
    </>
  );
}

export default observer(App);
