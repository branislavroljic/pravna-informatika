import { get } from "@api/utils";
import axios from "axios";

const baseUrl = new URL("cbr/", import.meta.env.VITE_API_URL);

export function getCases(): Promise<string[]> {
  return get(new URL("cases", baseUrl));
}

export function getLaws(): Promise<string[]> {
  return get(new URL("laws", baseUrl));
}

export const fetchFile = async (dir: string, name: string) => {
  const url = new URL(`${dir}/${name}`, baseUrl);
  const response = await axios.get(url.toString(), {
    responseType: "blob",
  });
  return window.URL.createObjectURL(
    new Blob([response.data], { type: "application/pdf" })
  );
};
