import toast from 'react-hot-toast';
import { formErrorsPopup } from '@/components/popups/errors';
// Generic success message
export const showSuccess = (message = 'Success!') => {
  toast.success(`✅ ${message}`);
};



export const showFormErrors = (errorData: ApiError) => {
  toast.custom((t) => (formErrorsPopup(t,errorData)));
}

export const showLoginFormErrors = (errorData: LoginError) => {
  console.log(errorData)
  toast.error(`🚫 ${errorData.response?.data.error_description}`);
}
// Generic error message
export const showError = (message: string) => {
  toast.error(`🚫 ${message}`);
};

// export const showError = (message:string, errors:object ) => {
//     let errorList = '';

//     if (typeof errors === 'object' && !Array.isArray(errors)) {
//         for (const [field, messages] of Object.entries(errors)) {
//             messages.forEach(message => {
//                 errorList += `<li><span style="color: red; margin-right: 8px;">&#x26A0;</span>${message}</li>`;
//             });
//         }
//     } else if (Array.isArray(errors)) {
//         errors.forEach(error => {
//             if (typeof error === 'object' && error.message) {
//                 errorList += `<li><span style="color: red; margin-right: 8px;">&#x26A0;</span>${error.message}</li>`;
//             } else {
//                 errorList += `<li><span style="color: red; margin-right: 8px;">&#x26A0;</span>${error}</li>`;
//             }
//         });
//     } else {
//         errorList = `<li><span style="color: red; margin-right: 8px;">&#x26A0;</span>${errors}</li>`;
//     }

//     Swal.fire({
//         title: title,
//         html: `<ul style="text-align: left; list-style: none; padding: 0;">${errorList}</ul>`,
//         toast: true,
//         padding: ".5rem",
//         position: 'top-right',
//         color: "#ff0303",
//         background: "rgb(254 215 215)",
//         customClass: {
//             popup: '!border-2 !border-gray-600',
//         },
//         showConfirmButton: false,
//         timer: 5000,
//         timerProgressBar: true,
//         didOpen: (toast) => {
//             toast.addEventListener('mouseenter', Swal.stopTimer);
//             toast.addEventListener('mouseleave', Swal.resumeTimer);
//         }
//     });
// };

// Show a loading toast and return its ID so you can dismiss or update it later
export const showLoading = (message = 'Loading...') => {
  return toast.loading(`⏳ ${message}`);
};

// Update an existing loading toast to success
export const updateToSuccess = (toastId, message = 'Success!') => {
  toast.success(`✅ ${message}`, {
    id: toastId,
  });
};

// Update an existing loading toast to error
export const updateToError = (toastId, message = 'Something went wrong.') => {
  toast.error(`❌ ${message}`, {
    id: toastId,
  });
};

// Promise-based toast (optional wrapper)
export const toastPromise = (promise, messages = {}) => {
  return toast.promise(promise, {
    loading: messages.loading || 'Loading...',
    success: messages.success || 'Success!',
    error: messages.error || 'Error!',
  });
};

export const dismissToast = (id) => toast.dismiss(id);

