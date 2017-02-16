ROOT="/home/chris/android/system"
REPOSITORIES=(
    'packages/apps/ContactsCommon'
    'packages/apps/Contacts'
    'packages/apps/Settings'
    'packages/apps/ExactCalculator'
    'packages/apps/PhoneCommon'
    'build'
    'system/sepolicy'
    'frameworks/native'
    'frameworks/base'
)

for repository in "${REPOSITORIES[@]}"; do
    cd "${ROOT}/${repository}"

    git am "${ROOT}/vendor/extra/patches/${repository}"/*

    cd "${ROOT}"
done
