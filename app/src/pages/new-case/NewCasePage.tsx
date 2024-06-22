import { CardContent, Grid, Typography } from "@mui/material";
import PageContainer from "@ui/container/PageContainer";

// Import styles
import "@react-pdf-viewer/core/lib/styles/index.css";
import NewCaseForm from "./NewCaseForm";
import Breadcrumb from "@layout/full/shared/breadcrumb/Breadcrumb";
import Scrollbar from "@ui/custom-scroll/Scrollbar";
import BlankCard from "@ui/shared/BlankCard";

export default function NewCasePage() {
  return (
    <PageContainer title="Presude" description="this is innerpage">
      <Grid container spacing={0} style={{ height: "81vh", marginTop: 10 }}>
        <Breadcrumb items={[]} title={"Nova presuda"} />
        <Grid
          item
          xs={12}
          lg={6}
          style={{ height: "100%" }}
          direction={"column"}
        >
          <Scrollbar
            sx={{
              height: { lg: "calc(100vh - 140px)", sm: "100vh" },
              maxHeight: "700px",
            }}
          >
            <BlankCard>
              <CardContent>
                <Typography variant="h5" mb={1} align="center">
                  {"Dodavanje nove presude"}
                </Typography>
                <Typography color="textSecondary" mb={1} align="center" display="block">
                  {
                    "Molimo unesite osnovne podatke kako biste dobili opciju dodavanja nove presude"
                  }
                </Typography>
                <Typography color="textSecondary" mb={1} align="center" display="block">
                  {
                    "Ukoliko unesete neophodne podatke rasuđivanja, klikom na relevantno dugme, dobićete savete na osnovu baze slučajeva i LegalRuleML sistema"
                  }
                </Typography>
                <NewCaseForm />
              </CardContent>
            </BlankCard>
          </Scrollbar>
        </Grid>
        <Grid item xs={12} lg={6}>
          samm
        </Grid>
      </Grid>
    </PageContainer>
  );
}
