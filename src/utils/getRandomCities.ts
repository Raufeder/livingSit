
const MAX_ID = 5

export const getRandomCity: (notThisOne?: number) => number = (notThisOne?: number) => {
    const cityNumber = Math.floor(Math.random() * (MAX_ID )+ 1)

    if (cityNumber !== notThisOne) return cityNumber
    return getRandomCity(notThisOne)
}

export const getOptionsForVote = () => {
    const firstID = getRandomCity();
    const secondID = getRandomCity(firstID);

    return [firstID, secondID]
}
