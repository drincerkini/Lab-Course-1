import { observer } from "mobx-react-lite";
import React, { SyntheticEvent, useState } from "react";
import { Link } from "react-router-dom";
import { Button, Card, Grid, Icon, Item, Rating, Segment } from "semantic-ui-react";
import { useStore } from "../../../app/stores/store";



export default observer (function LibriList() {
  const {libriStore}=useStore();
  const{deleteLibri, libratByViti}=libriStore;
  const[target, setTarget]= useState('');


  function handleDeleteLibri(e: SyntheticEvent<HTMLButtonElement>, id: number){
    setTarget(e.currentTarget.value);
    deleteLibri(id);
  }
  return (
      <Grid columns={4}>
      {libratByViti.map(libri => (
            <Grid.Column key={libri.id}>
              <Card 
              image={`../../../../assets/libratImg/${libri.foto}`} 
              header={libri.emri}
              meta={libri.autori}
              description={libri.zhanri}
              
              extra={
                <>
                <Rating maxRating={5} clearable />
                <br />
                <Button animated='fade' value={libri.id}  onClick={(e)=> handleDeleteLibri(e, libri.id)} floated='right' basic color="red">
                    <Button.Content visible><Icon className="trash" /></Button.Content>
                    <Button.Content hidden>DELETE</Button.Content>
                  </Button>
                  <Button animated as={Link} to={`/librat/${libri.id}`} floated='right'  basic color='grey' >
                  <Button.Content hidden>VIEW</Button.Content>
                  <Button.Content visible>
                    <Icon name='arrow right' />
                  </Button.Content>
                </Button>
                
                </>
              }
              />
          </Grid.Column>
        ))}
      </Grid>
  );
})
