import { useMemo, useState } from "react";
import {
  Grid,
  Box,
  Typography,
  Stack,
  Autocomplete,
  TextField,
  RadioGroup,
  FormControlLabel,
  Radio,
} from "@mui/material";
import { Link } from "react-router-dom";
import { z } from "zod";
import { Controller, useForm } from "react-hook-form";
import { useNotificationStore } from "@stores/notificationStore";
import { zodResolver } from "@hookform/resolvers/zod";
import CustomFormLabel from "@ui/forms/theme-elements/CustomFormLabel";
import CustomTextField from "@ui/forms/theme-elements/CustomTextField";
import LoadingButton from "@mui/lab/LoadingButton";
import { alignProperty } from "@mui/material/styles/cssUtils";

const newCaseSchema = z.object({
  court: z.string({
    required_error: "Sud je neophodan",
  }),
  caseNumber: z.string({
    required_error: "Broj slučaja je neophodan",
  }),
  judge: z.string({
    required_error: "Sudija je neophodan",
  }),
  courtReporter: z.string({
    required_error: "Zapisničar je neophodan",
  }),
  defendant: z.string({
    required_error: "Optuženi je neophodan",
  }),
  criminalOffense: z.string({
    required_error: "Krivično delo je neophodno",
  }),
  injurySeverity: z.string({
    required_error: "Polje je neophodno",
  }),
  publicOfficial: z.string({
    required_error: "Polje je neophodno",
  }),
  isUsedWeapon: z.string({
    required_error: "Polje je neophodno",
  }),
  isPermanentDamage: z.string({
    required_error: "Poljeje neophodno",
  }),
  isProvoked: z.string({
    required_error: "Polje je neophodno",
  }),
  isRecidivist: z.string({
    required_error: "Polje je neophodno",
  }),
});

type NewCaseInput = z.infer<typeof newCaseSchema>;

const NewCaseForm = () => {
  const openNotification = useNotificationStore(
    (state) => state.openNotification
  );
  const [loading, setLoading] = useState(false);

  const injurySeverities = useMemo(() => ["NONE", "MINOR", "SERIOUS"], []);
  const publicOfficials = useMemo(
    () => ["NONE", "PUBLIC_OFFICIAL", "SPECIAL_PUBLIC_OFFICIAL"],
    []
  );

  const {
    handleSubmit,
    control,
    formState: { errors },
  } = useForm<NewCaseInput>({ resolver: zodResolver(newCaseSchema) });

  const getRecomendations = async (input: NewCaseInput) => {
    setLoading(true);
    const baseUrl = new URL("auth/signup", import.meta.env.VITE_API_URL);
    const result = await fetch(baseUrl, {
      method: "POST",
      body: JSON.stringify(input),
      headers: {
        "Content-type": "application/json",
      },
    });

    setLoading(false);
    if (!result.ok) {
      openNotification({
        isError: true,
        primaryText: "Dogodila se greska",
        secondaryText: (await result.json()).message,
      });
      return;
    }

    return;
  };

  return (
    <>
      <Box component="form" onSubmit={handleSubmit(getRecomendations)}>
        <Grid container direction={"row"} spacing={1}>
          <Grid item xs={12} sm={12} lg={12}>
            <CustomFormLabel
              sx={{
                mt: 2,
              }}
              htmlFor="court"
            >
              {"Sud"}
            </CustomFormLabel>
            <Controller
              name="court"
              control={control}
              defaultValue={undefined}
              render={({ field }) => (
                <CustomTextField
                  id="court"
                  required
                  error={errors.court !== undefined}
                  helperText={errors.court?.message}
                  placeholder={"Sud"}
                  variant="outlined"
                  fullWidth
                  {...field}
                />
              )}
            />
          </Grid>
          <Grid item xs={12} sm={6} lg={6}>
            <CustomFormLabel
              sx={{
                mt: 2,
              }}
              htmlFor="caseNumber"
            >
              {"Broj slučaja"}
            </CustomFormLabel>
            <Controller
              name="caseNumber"
              control={control}
              defaultValue={undefined}
              render={({ field }) => (
                <CustomTextField
                  id="caseNumber"
                  required
                  error={errors.caseNumber !== undefined}
                  helperText={errors.caseNumber?.message}
                  placeholder={"Broj slučaja"}
                  variant="outlined"
                  fullWidth
                  {...field}
                />
              )}
            />
          </Grid>
          <Grid item xs={12} sm={6} lg={6}>
            <CustomFormLabel
              sx={{
                mt: 2,
              }}
              htmlFor="judge"
            >
              {"Sudija"}
            </CustomFormLabel>
            <Controller
              name="judge"
              control={control}
              defaultValue={undefined}
              render={({ field }) => (
                <CustomTextField
                  id="judge"
                  required
                  error={errors.judge !== undefined}
                  helperText={errors.judge?.message}
                  placeholder={"Sudija"}
                  variant="outlined"
                  fullWidth
                  {...field}
                />
              )}
            />
          </Grid>
          <Grid item xs={12} sm={6} lg={6}>
            <CustomFormLabel
              sx={{
                mt: 2,
              }}
              htmlFor="courtReporter"
            >
              {"Zapisničar"}
            </CustomFormLabel>
            <Controller
              name="courtReporter"
              control={control}
              defaultValue={undefined}
              render={({ field }) => (
                <CustomTextField
                  id="courtReporter"
                  required
                  error={errors.courtReporter !== undefined}
                  helperText={errors.courtReporter?.message}
                  placeholder={"Zapisničar"}
                  variant="outlined"
                  fullWidth
                  {...field}
                />
              )}
            />
          </Grid>
          <Grid item xs={12} sm={6} lg={6}>
            <CustomFormLabel
              sx={{
                mt: 2,
              }}
              htmlFor="courtReporter"
            >
              {"Okrivljeni"}
            </CustomFormLabel>
            <Controller
              name="defendant"
              control={control}
              defaultValue={undefined}
              render={({ field }) => (
                <CustomTextField
                  id="defendant"
                  required
                  error={errors.defendant !== undefined}
                  helperText={errors.defendant?.message}
                  placeholder={"Okrivljeni"}
                  variant="outlined"
                  fullWidth
                  {...field}
                />
              )}
            />
          </Grid>
          <Grid item xs={12} sm={12} lg={12}>
            <CustomFormLabel
              sx={{
                mt: 2,
              }}
              htmlFor="criminalOffense"
            >
              {"Krivično delo"}
            </CustomFormLabel>
            <Controller
              name="criminalOffense"
              control={control}
              defaultValue={undefined}
              render={({ field }) => (
                <CustomTextField
                  id="criminalOffense"
                  required
                  error={errors.criminalOffense !== undefined}
                  helperText={errors.criminalOffense?.message}
                  placeholder={"Krivično delo"}
                  variant="outlined"
                  fullWidth
                  {...field}
                />
              )}
            />
          </Grid>
          <Grid item xs={12} sm={6} lg={6}>
            <CustomFormLabel
              sx={{
                mt: 2,
              }}
              htmlFor="injurySeverity"
            >
              {"Težina povrede"}
            </CustomFormLabel>
            <Controller
              name="injurySeverity"
              control={control}
              defaultValue={undefined}
              render={({ field: { onChange, value } }) => (
                <Autocomplete
                  onChange={(event, item) => {
                    onChange(item);
                  }}
                  value={injurySeverities.find((m) => m === value)}
                  options={injurySeverities}
                  getOptionLabel={(option) => option}
                  renderInput={(params) => (
                    <TextField
                      {...params}
                      sx={{
                        marginTop: "5px !important",
                        marginBottom: "0px",
                        padding: "0px !important",
                        "& .MuiInputBase-root": { height: "45px" },
                        "& input": { color: "white" },
                      }}
                      label={"Težina povrede"}
                      margin="normal"
                      variant="outlined"
                      error={errors.injurySeverity !== undefined}
                      required
                    />
                  )}
                />
              )}
            />
          </Grid>
          <Grid item xs={12} sm={6} lg={6}>
            <CustomFormLabel
              sx={{
                mt: 2,
              }}
              htmlFor="publicOfficial"
            >
              {"Službeno lice"}
            </CustomFormLabel>
            <Controller
              name="publicOfficial"
              control={control}
              defaultValue={undefined}
              render={({ field: { onChange, value } }) => (
                <Autocomplete
                  onChange={(event, item) => {
                    onChange(item);
                  }}
                  value={publicOfficials.find((m) => m === value)}
                  options={publicOfficials}
                  getOptionLabel={(option) => option}
                  renderInput={(params) => (
                    <TextField
                      {...params}
                      sx={{
                        marginTop: "5px !important",
                        marginBottom: "0px",
                        padding: "0px !important",
                        "& .MuiInputBase-root": { height: "45px" },
                        "& input": { color: "white" },
                      }}
                      label={"Službeno lice"}
                      margin="normal"
                      variant="outlined"
                      error={errors.publicOfficial !== undefined}
                      required
                    />
                  )}
                />
              )}
            />
          </Grid>
          <Grid
            item
            xs={12}
            sm={12}
            lg={12}
            display={"flex"}
            flexDirection={"column"}
            alignItems={"center"}
          >
            <CustomFormLabel
              sx={{
                mt: 2,
              }}
              htmlFor="isUsedWeapon"
            >
              {"Da li je korišteno oružje prilikom napada?"}
            </CustomFormLabel>
            <Controller
              name="isUsedWeapon"
              control={control}
              defaultValue={false}
              render={({ field }) => (
                <RadioGroup
                  {...field}
                  row
                  value={field.value !== undefined ? String(field.value) : ""} // Convert boolean to string for RadioGroup
                  onChange={(e) => field.onChange(e.target.value === "true")} // Convert string back to boolean on change
                >
                  <FormControlLabel
                    value="false"
                    control={<Radio />}
                    label="Ne"
                  />
                  <FormControlLabel
                    value="true"
                    control={<Radio />}
                    label="Da"
                  />
                </RadioGroup>
              )}
            />
          </Grid>
          <Grid
            item
            xs={12}
            sm={12}
            lg={12}
            display={"flex"}
            flexDirection={"column"}
            alignItems={"center"}
          >
            <CustomFormLabel
              sx={{
                mt: 2,
              }}
              htmlFor="isPermanentDamage"
            >
              {"Da li je povreda prouzrokovala trajno oštećenje povređenog?"}
            </CustomFormLabel>
            <Controller
              name="isPermanentDamage"
              control={control}
              defaultValue={false}
              render={({ field }) => (
                <RadioGroup
                  {...field}
                  row
                  value={field.value !== undefined ? String(field.value) : ""} // Convert boolean to string for RadioGroup
                  onChange={(e) => field.onChange(e.target.value === "true")} // Convert string back to boolean on change
                >
                  <FormControlLabel
                    value="false"
                    control={<Radio />}
                    label="Ne"
                  />
                  <FormControlLabel
                    value="true"
                    control={<Radio />}
                    label="Da"
                  />
                </RadioGroup>
              )}
            />
          </Grid>
          <Grid
            item
            xs={12}
            sm={12}
            lg={12}
            display={"flex"}
            flexDirection={"column"}
            alignItems={"center"}
            justifyContent={"center"}
          >
            <CustomFormLabel
              sx={{
                mt: 2,
              }}
              htmlFor="isProvoked"
            >
              {
                "Da li je napad je usledio kao posledica vređanja, provociranja ili grubog ponašanja oštećenog?"
              }
            </CustomFormLabel>
            <Controller
              name="isProvoked"
              control={control}
              defaultValue={false}
              render={({ field }) => (
                <RadioGroup
                  {...field}
                  row
                  value={field.value !== undefined ? String(field.value) : ""} // Convert boolean to string for RadioGroup
                  onChange={(e) => field.onChange(e.target.value === "true")} // Convert string back to boolean on change
                >
                  <FormControlLabel
                    value="false"
                    control={<Radio />}
                    label="Ne"
                  />
                  <FormControlLabel
                    value="true"
                    control={<Radio />}
                    label="Da"
                  />
                </RadioGroup>
              )}
            />
          </Grid>
          <Grid
            item
            xs={12}
            sm={12}
            lg={12}
            display={"flex"}
            flexDirection={"column"}
            alignItems={"center"}
          >
            <CustomFormLabel
              sx={{
                mt: 2,
              }}
              htmlFor="isRecidivist"
            >
              {"Da li je okrivljeni bio ranije osuđivan?"}
            </CustomFormLabel>
            <Controller
              name="isRecidivist"
              control={control}
              defaultValue={false}
              render={({ field }) => (
                <RadioGroup
                  {...field}
                  row
                  value={field.value !== undefined ? String(field.value) : ""} // Convert boolean to string for RadioGroup
                  onChange={(e) => field.onChange(e.target.value === "true")} // Convert string back to boolean on change
                >
                  <FormControlLabel
                    value="false"
                    control={<Radio />}
                    label="Ne"
                  />
                  <FormControlLabel
                    value="true"
                    control={<Radio />}
                    label="Da"
                  />
                </RadioGroup>
              )}
            />
          </Grid>
        </Grid>

        <LoadingButton
          color="secondary"
          variant="contained"
          size="large"
          fullWidth
          type="submit"
          loading={loading}
          style={{ color: "white" }}
          sx={{ marginTop: "20px" }}
        >
          {"Preporuke rasuđivanja"}
        </LoadingButton>
      </Box>
    </>
  );
};

export default NewCaseForm;
