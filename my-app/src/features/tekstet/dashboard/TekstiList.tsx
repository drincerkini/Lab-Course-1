import { observer } from "mobx-react-lite";
import React, { SyntheticEvent, useState } from "react";
import { Link } from "react-router-dom";
import { Button, Card, Grid, Icon, Item, Segment } from "semantic-ui-react";
import { useStore } from "../../../app/stores/store";



export default observer(function TekstiList() {
  const { tekstiStore } = useStore();
  const { deleteTeksti, tekstetByViti } = tekstiStore;
  const [target, setTarget] = useState('');

  function handleDeleteteksti(e: SyntheticEvent<HTMLButtonElement>, id: number) {
    setTarget(e.currentTarget.value);
    deleteTeksti(id);
  }
  return (

    <Grid columns={4}>
      {tekstetByViti.map(teskti => (
        <Grid.Column key={teskti.id}>
          <Card
            image={`../../../../assets/libratImg/${teskti.foto}`}
            header={teskti.emri}
            meta={teskti.autori}
            description={teskti.zhanri}
            extra={
              <>
                <Button animated='fade' value={teskti.id} onClick={(e) => handleDeleteteksti(e, teskti.id)} floated='right' basic color="red">
                  <Button.Content visible><Icon className="trash" /></Button.Content>
                  <Button.Content hidden>DELETE</Button.Content>
                </Button>
                <Button animated as={Link} to={`/tekstet/${teskti.id}`} floated='right' basic color='grey' >
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
