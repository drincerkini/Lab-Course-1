import { observer } from "mobx-react-lite";
import React, { useEffect } from "react";
import { Link } from "react-router-dom";
import { Button, Grid, Header } from "semantic-ui-react";
import LoadingComponent from "../../../app/layout/LoadingComponent";
import { useStore } from "../../../app/stores/store";
import RevistaList from "./RevistaList";

export default observer(function RevistaDashboard() {
  const { revistaStore } = useStore();
  const { loadRevistat, revistaRegistry } = revistaStore;

  useEffect(() => {
    if (revistaRegistry.size <= 1) loadRevistat();
  }, [revistaRegistry.size, loadRevistat]);

  if (revistaStore.loadingInitial)
    return <LoadingComponent content="Ju lutemi pritni!" />;

  return (
    <>
      <br />
      <Header as='h1' color="black" dividing>
        REVISTAT <Button content="Shto Revista"  floated="right" as={Link} to='/createRevista' size="tiny" />
      </Header>
      <br />
      <Grid>
        <Grid.Row width="10">
          <RevistaList />
        </Grid.Row>
      </Grid>
    </>
  );
})