import { redirect } from "@remix-run/react";
import { createEmptyUser } from "../data/dummyjson";

export const usersAction = async () => {
  const user = await createEmptyUser();
  return redirect(`/users/${user.id}/edit`);
};
