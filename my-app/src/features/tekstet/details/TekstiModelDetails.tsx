import { observer } from "mobx-react-lite";
import React, { useEffect } from "react";
import { Link, useParams } from "react-router-dom";
import { Button, Card, Image, Item } from "semantic-ui-react";
import LoadingComponent from "../../../app/layout/LoadingComponent";
import { useStore } from "../../../app/stores/store";

//Ketu jane detajet e tekstit qe shfaqen ne momentin
//kur klikojme view dhe funksionet qe nevojiten ne tekstiModelDetails component ne tekstiDashboard.tsx

export default observer(function TekstiModelDetails() {
  const { tekstiStore } = useStore();
  const { selectedTeksti: teksti, loadTeksti, loadingInitial } = tekstiStore;
  const { id } = useParams<{ id: any }>();

  useEffect(() => {
    if (id) loadTeksti(id);
  }, [id, loadTeksti]);



  if (loadingInitial || !teksti) return <LoadingComponent />;

  return (


    <Item.Group>
      <Item>
        <Item.Image size='medium' src={`../../../../assets/libratImg/${teksti.foto}`} />

        <Item.Content>
          <Item.Header as='a'>
            <h5>TITULLI I TEKSTIT: {teksti.emri}</h5>

          </Item.Header>
          <Item.Extra><h5>AUTORI I TEKSTIT: {teksti.autori}</h5></Item.Extra>
          <Item.Meta>{teksti.isbn}</Item.Meta>
          <Item.Description>
            <h5>PERSHKRIMI I TEKSTIT:</h5>
            {teksti.pershkrimi}
          </Item.Description>
          <Item.Extra><h5>SHTEPIA BOTUESE: {teksti.shtepia_Botuese} </h5></Item.Extra>
          <Item.Meta><h5>VITI I PUBLIKIMIT: {teksti.viti_Publikimit} </h5></Item.Meta>
          <Button.Group className="p-30 m-30">
            <Button as={Link} to={`/manage2/${teksti.id}`} basic color="blue" content="Edit" />
            <Button as={Link} to='/tekstet' basic color="red" content="Cancel" />
          </Button.Group>
        </Item.Content>
      </Item>
    </Item.Group>

  );
})
