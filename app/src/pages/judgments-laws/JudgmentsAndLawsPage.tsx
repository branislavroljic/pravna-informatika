import {
  Box,
  Divider,
  Grid,
  InputAdornment,
  TextField,
  Typography,
} from "@mui/material";
import PageContainer from "@ui/container/PageContainer";
import { useMemo, useState } from "react";
import { getFile } from "@api/cbr/cbr";
import { useQuery } from "@tanstack/react-query";
import { Worker, Viewer, SpecialZoomLevel } from "@react-pdf-viewer/core";

// Import styles
import "@react-pdf-viewer/core/lib/styles/index.css";
import { IconSearch } from "@tabler/icons-react";
import Scrollbar from "@ui/custom-scroll/Scrollbar";
import DocumentsList from "@pages/shared/DocumentsList";
import Breadcrumb from "@layout/full/shared/breadcrumb/Breadcrumb";

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
        return getFile(selectedDocumentType, selectedDocument + ".pdf");
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
        style={{ height: "calc(100vh)", overflow: "visible" }}
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
              height: { lg: "calc(100vh - 72px)", md: "90vh" },
              maxHeight: "800px",
            }}
          >
            <Typography>Zakoni</Typography>
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
            <Typography>Presude</Typography>
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
            alignItems: "center",
            backgroundColor: selectedDocument ? "white" : "#c1e3f5",
          }}
        >
          {!selectedDocument ? (
            <Typography
              style={{ fontStyle: "italic", color: "grey", fontSize: "17px" }}
            >
              Slučaj nije odabran
            </Typography>
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
