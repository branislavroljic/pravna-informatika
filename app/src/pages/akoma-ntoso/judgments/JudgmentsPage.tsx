import {
  Box,
  Divider,
  Grid,
  InputAdornment,
  Stack,
  TextField,
  Typography,
} from "@mui/material";
import PageContainer from "@ui/container/PageContainer";
import { useState } from "react";

// Import styles
import "@react-pdf-viewer/core/lib/styles/index.css";
import { IconSearch } from "@tabler/icons-react";
import Scrollbar from "@ui/custom-scroll/Scrollbar";
import DocumentsList from "@pages/shared/DocumentsList";
import Judgment from "./Judgment";

export default function JudgmentsAndLawsPage() {
  const [selectedDocument, setSelectedDocument] = useState<string | undefined>(
    undefined
  );
  const [searchTerm, setSearchTerm] = useState("");

  //   const { data, isLoading } = useQuery({
  //     queryKey: ["akoma-document", selectedDocument],
  //     queryFn: async () => {
  //       if (selectedDocument != undefined)
  //         return getFile("cases-akoma", selectedDocument, "application/xml");
  //     },
  //     enabled: !!selectedDocument,
  //   });

  const handleDocumentSelection = (documentName: string) => {
    setSelectedDocument(documentName);
  };

  return (
    <PageContainer title="Presude" description="this is innerpage">
      <Grid
        container
        spacing={0}
        style={{ height: "90vh", overflow: "visible" }}
      >
        <Grid
          item
          xs={12}
          lg={4}
          style={{ height: "100%" }}
          direction={"column"}
        >
          <Box display="flex" sx={{ p: 2 }}>
            <TextField
              id="outlined-basic"
              InputProps={{
                endAdornment: (
                  <InputAdornment position="end">
                    <IconSearch size={"16"} />
                  </InputAdornment>
                ),
              }}
              fullWidth
              size="small"
              value={searchTerm}
              onChange={(e) => setSearchTerm(e.target.value)}
              placeholder="Pretraži dokumente"
              variant="outlined"
            />
          </Box>
          <Scrollbar
            sx={{
              height: { lg: "calc(100vh - 120px)", md: "100vh" },
              maxHeight: "800px",
            }}
          >
            <DocumentsList
              documentType="cases"
              selectedDocument={selectedDocument}
              setSelectedDocument={(documentName: string) =>
                handleDocumentSelection(documentName)
              }
              searchTerm={searchTerm}
            />
          </Scrollbar>
        </Grid>
        <Grid
          item
          xs={12}
          lg={8}
          style={{
            height: "100%",
            width: "100%",
            overflowY: "auto",
            justifyContent: "center",
            display: "flex",
          }}
        >
          {!selectedDocument ? (
            <Typography>Slučaj nije odabran</Typography>
          ) : (
            <Stack>
              <Judgment selectedDocument={selectedDocument} />
            </Stack>
          )}
        </Grid>
      </Grid>
    </PageContainer>
  );
}
