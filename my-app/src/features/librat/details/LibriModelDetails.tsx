import { observer } from "mobx-react-lite";
import React, { useEffect } from "react";
import { Link, useParams } from "react-router-dom";
import { Button, Card, Image, Item } from "semantic-ui-react";
import LoadingComponent from "../../../app/layout/LoadingComponent";
import { useStore } from "../../../app/stores/store";

//Ketu jane detajet e librit qe shfaqen ne momentin
//kur klikojme view dhe funksionet qe nevojiten ne LibriModelDetails component ne LibriDashboard.tsx

export default observer (function LibriModelDetails() {
  const { libriStore } = useStore();
  const { selectedLibri: libri, loadLibri, loadingInitial } = libriStore;
  const{id}=useParams<{id: any }>();

  useEffect(()=>{
    if(id) loadLibri(id);
  }, [id, loadLibri]);

  

  if (loadingInitial || !libri) return <LoadingComponent />;

  return (
    <Item.Group>
    <Item>
    <Item.Image size='medium' src={`../../../../assets/libratImg/${libri.foto}`} />

    <Item.Content>
      <Item.Header as='a'>
      <h5>TITULLI I LIBRIT: {libri.emri}</h5>
        
        </Item.Header>
      <Item.Extra><h5>AUTORI I LIBRIT: {libri.autori}</h5></Item.Extra>
      <Item.Meta>{libri.isbn}</Item.Meta>
      <Item.Description>
        <h5>PERSHKRIMI I LIBRIT:</h5>
        {libri.pershkrimi}
      </Item.Description>
      <Item.Extra><h5>SHTEPIA BOTUESE: {libri.shtepia_Botuese} </h5></Item.Extra>
      <Item.Meta><h5>VITI I PUBLIKIMIT: {libri.viti_Publikimit} </h5></Item.Meta>
      <Button.Group className="p-30 m-30">
          <Button as={Link} to ={`/manage1/${libri.id}`} basic color="blue" content="Edit" />
           <Button as={Link} to ='/librat' basic color="red" content="Cancel" />
         </Button.Group>
    </Item.Content>
  </Item>
  </Item.Group>
    
  );
})
