import {
  Box,
  InputAdornment,
  List,
  ListItemButton,
  ListItemText,
  Stack,
  TextField,
  Typography,
} from "@mui/material";
import { IconSearch } from "@tabler/icons-react";
import { useQuery } from "@tanstack/react-query";
import Scrollbar from "@ui/custom-scroll/Scrollbar";
import Spinner from "@ui/view/spinner/Spinner";
import { useState, useMemo } from "react";
import { getCases, getLaws } from "@api/cbr/cbr";

type DocumentListItemProps = {
  documentName: string;
  active: boolean;
  onDocumentClick: () => void;
};

const DocumentListItem = ({
  documentName,
  active,
  onDocumentClick,
}: DocumentListItemProps) => {
  return (
    <ListItemButton sx={{ mb: 1 }} selected={active} onClick={onDocumentClick}>
      <ListItemText>
        <Stack direction="row" gap="10px" alignItems="center">
          <Box mr="auto">
            <Typography
              variant="subtitle1"
              noWrap
              fontWeight={600}
              sx={{ maxWidth: "150px" }}
            >
              {documentName}
            </Typography>
            <Typography variant="body2" color="text.secondary" noWrap>
              PDF dokument
            </Typography>
          </Box>
        </Stack>
      </ListItemText>
    </ListItemButton>
  );
};

type DocumentsListProps = {
  documentType: "cases" | "laws";
  selectedDocument: string | undefined;
  setSelectedDocument: (documentName: string) => void;
  searchTerm: string;
};

const DocumentsList = ({
  documentType,
  selectedDocument,
  setSelectedDocument,
  searchTerm,
}: DocumentsListProps) => {
  const fetchDocuments = async () => {
    if (documentType === "cases") {
      return getCases();
    } else {
      return getLaws();
    }
  };

  const { data, isLoading } = useQuery({
    queryKey: [documentType],
    queryFn: fetchDocuments,
  });

  const filteredDocuments = useMemo(() => {
    if (!data) return [];
    return data.filter((documentItem) =>
      documentItem.toLowerCase().includes(searchTerm.toLowerCase())
    );
  }, [data, searchTerm]);

  return (
    <Box sx={{ width: "100%", flexShrink: 1 }}>
      {isLoading ? (
        <Spinner />
      ) : (
        <List>
          {filteredDocuments.map((documentItem, index) => (
            <DocumentListItem
              key={index}
              documentName={documentItem}
              active={documentItem === selectedDocument}
              onDocumentClick={() => setSelectedDocument(documentItem)}
            />
          ))}
        </List>
      )}
    </Box>
  );
};

export default DocumentsList;
