import {
  Box,
  Divider,
  Grid,
  InputAdornment,
  TextField,
  Typography,
} from "@mui/material";
import PageContainer from "@ui/container/PageContainer";
import { useState } from "react";
import { fetchFile } from "@api/cbr/cbr";
import { useQuery } from "@tanstack/react-query";
import { Worker, Viewer, SpecialZoomLevel } from "@react-pdf-viewer/core";

// Import styles
import "@react-pdf-viewer/core/lib/styles/index.css";
import DocumentsList from "./DocumentsList";
import { IconSearch } from "@tabler/icons-react";
import Scrollbar from "@ui/custom-scroll/Scrollbar";

export default function JudgmentsAndLawsPage() {
  const [selectedDocumentType, setSelectedDocumentType] = useState<
    "cases" | "laws"
  >("cases");
  const [selectedDocument, setSelectedDocument] = useState<string | undefined>(
    undefined
  );
  const [searchTerm, setSearchTerm] = useState("");

  const { data: pdfUrl, isLoading } = useQuery({
    queryKey: ["document", selectedDocumentType, selectedDocument],
    queryFn: async () => {
      if (selectedDocument != undefined)
        return fetchFile(selectedDocumentType, selectedDocument);
    },
    enabled: !!selectedDocument,
  });

  const handleDocumentSelection = (
    documentName: string,
    documentType: "cases" | "laws"
  ) => {
    setSelectedDocumentType(documentType);
    setSelectedDocument(documentName);
  };

  return (
    <PageContainer title="Predrasude i zakoni" description="this is innerpage">
      <Grid
        container
        spacing={0}
        style={{ height: "90vh", overflow: "visible" }}
      >
        <Grid
          item
          xs={12}
          lg={5}
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
            Presude
            <Divider />
            <DocumentsList
              documentType="cases"
              selectedDocument={
                selectedDocumentType === "cases" ? selectedDocument : undefined
              }
              setSelectedDocument={(documentName: string) =>
                handleDocumentSelection(documentName, "cases")
              }
              searchTerm={searchTerm}
            />
            Zakoni
            <Divider />
            <DocumentsList
              documentType="laws"
              selectedDocument={
                selectedDocumentType === "laws" ? selectedDocument : undefined
              }
              setSelectedDocument={(documentName: string) =>
                handleDocumentSelection(documentName, "laws")
              }
              searchTerm={searchTerm}
            />
          </Scrollbar>
        </Grid>
        <Grid
          item
          xs={12}
          lg={7}
          style={{
            height: "100%",
            width: "100%",
            overflowY: "auto",
            justifyContent: "center",
            display: "flex",
            alignItems: "center",
          }}
        >
          {!selectedDocument ? (
            <Typography>Slučaj nije odabran</Typography>
          ) : isLoading ? null : (
            <Worker workerUrl="https://unpkg.com/pdfjs-dist@3.4.120/build/pdf.worker.min.js">
              <Viewer
                fileUrl={pdfUrl}
                defaultScale={SpecialZoomLevel.PageWidth}
              />
            </Worker>
          )}
        </Grid>
      </Grid>
    </PageContainer>
  );
}
