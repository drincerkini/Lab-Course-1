import React, { useEffect } from "react";
import { Button, Grid, Header } from "semantic-ui-react";
import TekstiList from "./TekstiList";
import { useStore } from "../../../app/stores/store";
import { observer } from "mobx-react-lite";
import LoadingComponent from "../../../app/layout/LoadingComponent";
import { Link } from "react-router-dom";

export default observer(function LibriDashboard() {
  const { tekstiStore } = useStore();
  const {loadTekstet, tekstiRegistry}=tekstiStore;

  useEffect(() => {
    if(tekstiRegistry.size<=1) loadTekstet();
  }, [tekstiRegistry.size, loadTekstet]);

  //funksion qe e jek tekstin e kalun edhe e replace me ata t edituarin(1 eshte nese ka edhe e editojme, 2 eshte kur e bojm create prej fillimi)

  if (tekstiStore.loadingInitial)
    return <LoadingComponent content="Ju lutemi pritni!" />;
  return (
    <>
    <br />
      <Header as='h1' color="black" dividing>
        TEKSTET <Button content="Shto Tekste"  floated="right" as={Link} to='/createTeksti' size="tiny" />
      </Header>
      <br />
      <Grid>
        <Grid.Row width="10">
          <TekstiList />
        </Grid.Row>
      </Grid>
      </>
  );
});
