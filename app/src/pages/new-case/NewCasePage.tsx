import { CardContent, Divider, Grid, Typography } from "@mui/material";
import PageContainer from "@ui/container/PageContainer";

// Import styles
import "@react-pdf-viewer/core/lib/styles/index.css";
import NewCaseForm from "./NewCaseForm";
import Breadcrumb from "@layout/full/shared/breadcrumb/Breadcrumb";
import Scrollbar from "@ui/custom-scroll/Scrollbar";
import BlankCard from "@ui/shared/BlankCard";
import { useState } from "react";

export default function NewCasePage() {
  const [similarCases, setSimilarCases] = useState<string[] | null>(null);

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
              height: { lg: "calc(100vh - 130px)", sm: "100vh" },
              maxHeight: "700px",
            }}
          >
            <BlankCard>
              <CardContent>
                <Typography variant="h5" mb={1} align="center">
                  {"Dodavanje nove presude"}
                </Typography>
                <Typography
                  color="textSecondary"
                  mb={1}
                  align="center"
                  display="block"
                >
                  {
                    "Molimo unesite osnovne podatke kako biste dobili opciju dodavanja nove presude"
                  }
                </Typography>
                <Typography
                  color="textSecondary"
                  mb={1}
                  align="center"
                  display="block"
                >
                  {
                    "Ukoliko unesete neophodne podatke rasuđivanja, klikom na relevantno dugme, dobićete savete na osnovu baze slučajeva i LegalRuleML sistema"
                  }
                </Typography>
                <NewCaseForm setSimilarCases={setSimilarCases} />
              </CardContent>
            </BlankCard>
          </Scrollbar>
        </Grid>
        <Grid item xs={12} lg={6}>
          <Scrollbar
            sx={{
              height: { lg: "calc(100vh - 130px)", sm: "100vh" },
              maxHeight: "700px",
            }}
          >
            <BlankCard>
              <CardContent>
                <Grid container direction={"column"}>
                  <Grid item xs={9} lg={9}>
                    <Typography variant="h5" marginBottom={2}>
                      Rasuđivanje po slučajevima
                    </Typography>
                    {similarCases ? (
                      similarCases.map((c) => (
                        <Typography paragraph>{c}</Typography>
                      ))
                    ) : (
                      <Typography>Nema preporuka</Typography>
                    )}
                  </Grid>
                  <Divider />
                  <Grid item xs={3} lg={3} marginTop={2}>
                    <Typography variant="h5" marginBottom={2}>
                      Rasuđivanje po pravilima
                    </Typography>
                    {similarCases ? (
                      similarCases.map((c) => (
                        <Typography paragraph>{c}</Typography>
                      ))
                    ) : (
                      <Typography>Nema preporuka</Typography>
                    )}
                  </Grid>
                </Grid>
              </CardContent>
            </BlankCard>
          </Scrollbar>
        </Grid>
      </Grid>
    </PageContainer>
  );
}
